cmake_minimum_required(VERSION 3.12)


include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/gui/
    ${CMAKE_CURRENT_SOURCE_DIR}/backend/
)

file(GLOB_RECURSE FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/*.h
    ${CMAKE_CURRENT_SOURCE_DIR}/*.qrc
)

add_executable(${PROJECT_NAME} 
    ${FILES}
    ${VENDOR_SOURCES}   
)


target_link_libraries(${PROJECT_NAME} PRIVATE
    Qt5::Core
    Qt5::Quick
)