cmake_minimum_required(VERSION 2.8)

find_package(FLEX REQUIRED) 

# FLEX_TARGET(Name FlexInput FlexOutput [COMPILE_FLAGS <string>] [DEFINES_FILE <string>])
FLEX_TARGET(lexer ${CMAKE_CURRENT_SOURCE_DIR}/to_knr.l ${CMAKE_CURRENT_SOURCE_DIR}/lex.yy.c)

include_directories( ${FLEX_INCLUDE_DIRS} )

# message("FLEX_FOUND : ${FLEX_FOUND}") 
# message("FLEX_EXECUTABLE : ${FLEX_EXECUTABLE}")
# message("FLEX_VERSION : ${FLEX_VERSION}")
# message("FLEX_LIBRARIES : ${FLEX_LIBRARIES}")
# message("FLEX_INCLUDE_DIRS : ${FLEX_INCLUDE_DIRS}")
# message("FLEX_lexer_OUTPUTS : ${FLEX_lexer_OUTPUTS}")

add_executable( knr
    ${FLEX_lexer_OUTPUTS}
)

target_link_libraries( knr ${FLEX_LIBRARIES} )


INSTALL ( TARGETS knr 
        RUNTIME DESTINATION ~/.local/bin/to_knr
        )
