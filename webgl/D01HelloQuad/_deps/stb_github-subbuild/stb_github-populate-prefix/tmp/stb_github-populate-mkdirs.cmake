# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/stb_github-src"
  "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/stb_github-build"
  "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/stb_github-subbuild/stb_github-populate-prefix"
  "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/stb_github-subbuild/stb_github-populate-prefix/tmp"
  "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/stb_github-subbuild/stb_github-populate-prefix/src/stb_github-populate-stamp"
  "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/stb_github-subbuild/stb_github-populate-prefix/src"
  "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/stb_github-subbuild/stb_github-populate-prefix/src/stb_github-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/stb_github-subbuild/stb_github-populate-prefix/src/stb_github-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "D:/GIthub Code/cs250-graphics-fun-SeunghyeonSong/build/web-debug-on-windows/_deps/stb_github-subbuild/stb_github-populate-prefix/src/stb_github-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
