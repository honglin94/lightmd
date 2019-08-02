aux_source_directory(. http_SRCS)

add_library(lightmd_http ${http_SRCS})
target_link_libraries(lightmd_http lightmd_net)


#install(TARGETS lightmd_http DESTINATION lib)

#file(GLOB http_HEADERS "*.h")

#install(FILES ${http_HEADERS} DESTINATION include/http)