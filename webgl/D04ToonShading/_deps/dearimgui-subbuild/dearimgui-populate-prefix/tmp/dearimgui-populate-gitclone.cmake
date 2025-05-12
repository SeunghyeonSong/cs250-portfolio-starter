# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if(EXISTS "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/dearimgui-subbuild/dearimgui-populate-prefix/src/dearimgui-populate-stamp/dearimgui-populate-gitclone-lastrun.txt" AND EXISTS "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/dearimgui-subbuild/dearimgui-populate-prefix/src/dearimgui-populate-stamp/dearimgui-populate-gitinfo.txt" AND
  "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/dearimgui-subbuild/dearimgui-populate-prefix/src/dearimgui-populate-stamp/dearimgui-populate-gitclone-lastrun.txt" IS_NEWER_THAN "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/dearimgui-subbuild/dearimgui-populate-prefix/src/dearimgui-populate-stamp/dearimgui-populate-gitinfo.txt")
  message(STATUS
    "Avoiding repeated git clone, stamp file is up to date: "
    "'D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/dearimgui-subbuild/dearimgui-populate-prefix/src/dearimgui-populate-stamp/dearimgui-populate-gitclone-lastrun.txt'"
  )
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/dearimgui-src"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: 'D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/dearimgui-src'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "C:/Program Files/Git/cmd/git.exe"
            clone --no-checkout --config "advice.detachedHead=false" "https://github.com/ocornut/imgui.git" "dearimgui-src"
    WORKING_DIRECTORY "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps"
    RESULT_VARIABLE error_code
  )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once: ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/ocornut/imgui.git'")
endif()

execute_process(
  COMMAND "C:/Program Files/Git/cmd/git.exe"
          checkout "afd659bb926c94f32928ec586205e27075e93c92" --
  WORKING_DIRECTORY "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/dearimgui-src"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'afd659bb926c94f32928ec586205e27075e93c92'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "C:/Program Files/Git/cmd/git.exe" 
            submodule update --recursive --init 
    WORKING_DIRECTORY "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/dearimgui-src"
    RESULT_VARIABLE error_code
  )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: 'D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/dearimgui-src'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/dearimgui-subbuild/dearimgui-populate-prefix/src/dearimgui-populate-stamp/dearimgui-populate-gitinfo.txt" "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/dearimgui-subbuild/dearimgui-populate-prefix/src/dearimgui-populate-stamp/dearimgui-populate-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: 'D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/dearimgui-subbuild/dearimgui-populate-prefix/src/dearimgui-populate-stamp/dearimgui-populate-gitclone-lastrun.txt'")
endif()
