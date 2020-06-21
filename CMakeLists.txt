cmake_minimum_required(VERSION 2.8)
project( curly )
# SET ( CMAKE_C_COMPILER "g++" )

#####################################

find_package( Boost REQUIRED COMPONENTS program_options )
include_directories( ${Boost_INCLUDE_DIRS} )

add_executable( curly main.cpp )

target_link_libraries( curly ${Boost_PROGRAM_OPTIONS_LIBRARY} )

message("Boost_INCLUDE_DIRS : ${Boost_INCLUDE_DIRS}") 
message("Boost_PROGRAM_OPTIONS_LIBRARY : ${Boost_PROGRAM_OPTIONS_LIBRARY}")

add_subdirectory(./to_knr)
add_subdirectory(./to_allman)

INSTALL ( TARGETS curly 
        RUNTIME DESTINATION /home/comar/bin
        )
