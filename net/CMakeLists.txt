aux_source_directory(. net_SRCS)

add_library(lightmd_net ${net_SRCS})
target_link_libraries(lightmd_net lightmd_base)

#install(TARGET lightmd_net DESTINATION lib)

#file(GLOB net_HEADERS "*.h")

#install(FILES ${net_HEADERS} DESTINATION include/net)