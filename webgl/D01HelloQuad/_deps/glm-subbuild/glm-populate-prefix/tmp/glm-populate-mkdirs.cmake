# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/the_glm-src/glm"
  "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/glm-build"
  "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/glm-subbuild/glm-populate-prefix"
  "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/glm-subbuild/glm-populate-prefix/tmp"
  "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/glm-subbuild/glm-populate-prefix/src/glm-populate-stamp"
  "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/glm-subbuild/glm-populate-prefix/src"
  "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/glm-subbuild/glm-populate-prefix/src/glm-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/glm-subbuild/glm-populate-prefix/src/glm-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/glm-subbuild/glm-populate-prefix/src/glm-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
