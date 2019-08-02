aux_source_directory(. base_SRCS)

add_library(lightmd_base ${base_SRCS})
target_link_libraries(lightmd_base pthread rt)

#install(TARGETS lightmd_base DESTINATION lib)

#file(GLOB base_HEADERS "*.h")

#install(FILES ${base_HEADERS} DESTINATION include/base)