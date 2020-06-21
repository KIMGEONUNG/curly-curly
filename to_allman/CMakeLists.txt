cmake_minimum_required(VERSION 2.8)

find_package(FLEX REQUIRED) 

# FLEX_TARGET(Name FlexInput FlexOutput [COMPILE_FLAGS <string>] [DEFINES_FILE <string>])
FLEX_TARGET(lexer ${CMAKE_CURRENT_SOURCE_DIR}/to_allman.l ${CMAKE_SOURCE_DIR}/lex.yy.c)

include_directories( ${FLEX_INCLUDE_DIRS} )

message("FLEX_FOUND : ${FLEX_FOUND}") 
message("FLEX_EXECUTABLE : ${FLEX_EXECUTABLE}")
message("FLEX_VERSION : ${FLEX_VERSION}")
message("FLEX_LIBRARIES : ${FLEX_LIBRARIES}")
message("FLEX_INCLUDE_DIRS : ${FLEX_INCLUDE_DIRS}")
message("FLEX_lexer_OUTPUTS : ${FLEX_lexer_OUTPUTS}")

add_executable( allman
    ${FLEX_lexer_OUTPUTS}
)

target_link_libraries( allman ${FLEX_LIBRARIES} )


INSTALL ( TARGETS allman 
        RUNTIME DESTINATION /home/comar/bin/to_allman
        )
