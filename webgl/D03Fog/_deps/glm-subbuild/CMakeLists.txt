# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.22.1)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(glm-populate NONE)



include(ExternalProject)
ExternalProject_Add(glm-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "TRUE" "URL" "https://github.com/g-truc/glm/releases/download/1.0.1/glm-1.0.1-light.7z" "URL_HASH" "MD5=6db43fc749c8acdc8ccb9815b1a57f62"
                    SOURCE_DIR          "/mnt/d/GITHUB/cs250-graphics-fun-SeunghyeonSong/build/web-release/_deps/the_glm-src/glm"
                    BINARY_DIR          "/mnt/d/GITHUB/cs250-graphics-fun-SeunghyeonSong/build/web-release/_deps/glm-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
)


