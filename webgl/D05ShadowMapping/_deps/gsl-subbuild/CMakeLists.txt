# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.22.1)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(gsl-populate NONE)



include(ExternalProject)
ExternalProject_Add(gsl-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "TRUE" "URL" "https://github.com/microsoft/GSL/archive/refs/tags/v4.1.0.tar.gz" "URL_HASH" "MD5=7e6883a254e73a8b2368a0d26efe68a7"
                    SOURCE_DIR          "/mnt/d/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-release/_deps/gsl-src"
                    BINARY_DIR          "/mnt/d/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-release/_deps/gsl-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
)


