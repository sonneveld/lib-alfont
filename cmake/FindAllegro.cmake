include(FetchContent)

FetchContent_Declare(
    allegroproject
    #SOURCE_DIR "/Users/nick.sonneveld/othernick/src/ags-paid/allegro"
    GIT_REPOSITORY "https://github.com/sonneveld/allegro.git"
    GIT_TAG "ags-sdl2"
)
FetchContent_GetProperties(allegroproject)
if(NOT allegroproject_POPULATED)
    FetchContent_Populate(allegroproject)
    add_subdirectory(${allegroproject_SOURCE_DIR} ${allegroproject_BINARY_DIR} EXCLUDE_FROM_ALL)
endif()