## 阅读指南
- redisServer的进程入口为src/server.c中的main函数
- 掌握路线：
    1. 源码：走马观花式，选择感兴趣的数据结构或者流程，了解redis整体编码风格；
    2. 书籍：<<redis设计与实现>>...了解redis整体框架及设计思路；
    3. 实例：调试redis，熟悉redis基本命令(借助书籍/manual快速上手);
    4. 书籍、源码：梳理命令背后的运行原理；
    5. 实例：掌握命令的使用；
    6. 源码、书籍：问题排查及概念精进；
- 结合实践，抓主要问题，快速掌握整体，逐步精通

## 面向对象
- redis中最核心的对象是server，它是一个全局的单例对象，未被模块化，在main.c中直接实现了服务器逻辑；

- 来看一些被模块化的对象：(构造与析构)
    - list(adlist.c)
        - list *listCreate()完成内存申请和对象构造；
        - void listRelease(list *)/listEmpty(list *)完成对象析构和内存释放；
        - list对象内含对象成员：listNode，其实体为void *value
        - listNode在listInsertNode中通过zmalloc获取对象、在listInsertDel中通过zfree释放对象

    - intset(intset.c)
        - intset *intsetNew()获取对象
        - 在object.c中被进一步封装为robj* createIntSetObject(void)
        - 仅在freeIntSetObject(robj *)中调用zfree(intset *)释放intset对象
        - intset对象中虽然含有content指针对象，但其处理比较特殊：
            - content仅负责记录intset实体首地址，不负责内存管理：当向content追加数据时，会引发intset*的resize操作
            - 简言之，intset对象将一段内存分为两部分看待： 一部分存放intset结构体；另一部分存放content实体；由intset*统一进行内存管理

    - 综上分析：
        - 在redis中，复杂对象(包含指针对象)的获取被声明为create...、对象的析构被声明为release.../delete.../empty...
        - 而简单对象(可能含有指针成员，但指针不负责内存管理/或者说，对象拥有内存资源可通过对象指针统一管理)，则由zmalloc或者new实现对象获取，并由zfree进行对象释放；

- 封装(访问权限控制):
    - **通过协议而非typedef实现封装**
        - 例如connection定义在connection.h中，对client对象是可见的，但是通过connGetState()而非conn->state进行成员访问
        - 从这个层面来看，对象成员是严格private的（只是没有通过编译器加以限制），符合effective c++中的建议？

- 泛型
    - redis中泛型是通过...Type对象实现的：type成员会定义一系列的操作(函数指针)来规范类型的动作(例如dup、compare...)

## 事件模型
- 基于回调进行触发(ae.c/aeProcessEvents()): 
    - 具体的事件/Channel对象在redis下为：aeFileEvent、aeTimeEvent
    - 就aeFileEvent来说，除了维护读写事件回调函数指针以外，还记录了一个void *指针clientData作为回调函数的参数(实际上，也可以认为是struct epoll_event中的.data.ptr)，**clientData指针由用户进行维护**;
- 事件集的维护
    - eventloop在create时接受一个size参数限定服务器的client并发数，在server.c中指定初值(1024左右)，由用户在配置中进行定义，并通过aeResizeSetSize在读取配置时进行更新；
    - events是一个aeFileEvent数组，数组大小由前文size定义，元素索引为fd；
    - 用户通过aeCreateFileEvent函数向eventloop注册事件，如果fd越界，函数会返回失败并置errno为ERANGE
        - aeCreateFileEvent并非获取aeFileEvent对象，而是类似setReadCallback/setWriteCallback这样的函数，由mask参数指定读/写事件

- 总体来说，redis下的ae事件模型仍是reactor，构成了redis/networking.c的骨干；细节上与libevent存在一些差异，后续再进行整理；

## 内存管理
- void *zmalloc(size_t size):
    - 本质是调用malloc(size);
    - 如果malloc返回NULL，则调用oom_handler，默认句柄为zmalloc_default_omm，将内存溢出输出至stderr并执行abort
    - 在main中oom_handler被设置为redisOutOfMemoryHandler，将内存溢出输出至日志并执行exit

- void zfree(void *ptr):
    - 本质是调用free(ptr);
    - 调用前会进行判空，如果ptr==NULL，则直接返回；
    - 关于used_memory的处理暂且不论

- char *zstrdup(const char *s)
    - 实现逻辑为：调用zmalloc申请strlen(s) + 1大小的内存空间，然后从s处拷贝strlen(s) + 1字节内存至返回指针处
    - 标准strdup在OOM情况下会返回NULL，而zstrdup通过zmalloc对oom作了异常处理

## 线程模型
- src/networking.c: ioThreadMain()
    - 从函数中可以窥见，redis通过数组管理线程池，数组size为IO_THRADS_MAX_NUMS，同时每个iothread维护一个io_thread_list用于存放client对象指针;
        - 然后在函数中维护循环，反复从list中获取client执行io任务；
    - 具体函数细节及与eventloop间的联系待后续整理；

## 命名风格
- 函数：小驼峰
    - eg: connSocketWrite
    - 存在少量下划线命名风格的函数

- 变量：snake
    - eg: data_len, last_error

- 枚举、对象：大驼峰
    - eg: typedef struct ConnectionType {...} ConnectionType;
    - eg: typedef enum {...} ConnectionState;
    - 存在少量struct风格命名的对象

- 常量：#define
