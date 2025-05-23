
if(NOT "/mnt/d/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-release/_deps/stb_github-subbuild/stb_github-populate-prefix/src/stb_github-populate-stamp/stb_github-populate-gitinfo.txt" IS_NEWER_THAN "/mnt/d/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-release/_deps/stb_github-subbuild/stb_github-populate-prefix/src/stb_github-populate-stamp/stb_github-populate-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/mnt/d/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-release/_deps/stb_github-subbuild/stb_github-populate-prefix/src/stb_github-populate-stamp/stb_github-populate-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/mnt/d/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-release/_deps/stb_github-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/mnt/d/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-release/_deps/stb_github-src'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout --config "advice.detachedHead=false" "https://github.com/nothings/stb.git" "stb_github-src"
    WORKING_DIRECTORY "/mnt/d/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-release/_deps"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/nothings/stb.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout 5c205738c191bcb0abc65c4febfa9bd25ff35234 --
  WORKING_DIRECTORY "/mnt/d/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-release/_deps/stb_github-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '5c205738c191bcb0abc65c4febfa9bd25ff35234'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/mnt/d/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-release/_deps/stb_github-src"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/mnt/d/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-release/_deps/stb_github-src'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/mnt/d/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-release/_deps/stb_github-subbuild/stb_github-populate-prefix/src/stb_github-populate-stamp/stb_github-populate-gitinfo.txt"
    "/mnt/d/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-release/_deps/stb_github-subbuild/stb_github-populate-prefix/src/stb_github-populate-stamp/stb_github-populate-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/mnt/d/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-release/_deps/stb_github-subbuild/stb_github-populate-prefix/src/stb_github-populate-stamp/stb_github-populate-gitclone-lastrun.txt'")
endif()

