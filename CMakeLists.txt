
cmake_minimum_required(VERSION 3.11)
project(libalfont VERSION 1.9.1 LANGUAGES C)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})

find_package(Allegro)

add_library(alfont 
    freetype/src/base/ftbase.c
    freetype/src/base/ftglyph.c
    freetype/src/base/ftinit.c
    freetype/src/base/ftsystem.c
    #freetype/src/base/ftdebug.c
    #freetype/src/base/ftmm.c

    freetype/src/autohint/autohint.c
    freetype/src/bdf/bdf.c
    freetype/src/cff/cff.c
    freetype/src/cid/type1cid.c
    freetype/src/gzip/ftgzip.c
    freetype/src/pcf/pcf.c
    freetype/src/pfr/pfr.c
    freetype/src/psaux/psaux.c
    freetype/src/pshinter/pshinter.c
    freetype/src/psnames/psmodule.c
    freetype/src/raster/raster.c
    freetype/src/sfnt/sfnt.c
    freetype/src/smooth/smooth.c
    freetype/src/truetype/truetype.c
    freetype/src/type1/type1.c
    freetype/src/type42/type42.c
    freetype/src/winfonts/winfnt.c
    #freetype/src/cache/ftcache.c

    src/alfont.c
)

target_include_directories(alfont
    PUBLIC 
        $<INSTALL_INTERFACE:include>    
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype/include
)

target_link_libraries(alfont
    allegro
)

#target_compile_options(alfont PRIVATE -Wall -O2 -fomit-frame-pointer -finline-functions -ffast-math)

target_compile_features(alfont PRIVATE c_std_99)