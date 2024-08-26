#!/bin/bash

set -ex

cmake ${CMAKE_ARGS} -D CMAKE_BUILD_TYPE=Release     \
      -D CMAKE_INSTALL_PREFIX=$PREFIX \
      -D CMAKE_INSTALL_LIBDIR=lib     \
      -D BUILD_SHARED_LIBS=ON         \
      -D BUILD_EXAMPLES=OFF           \
      $EXTRA_MANPAGES_OPT             \
      $SRC_DIR

make -j${CPU_COUNT}

make install
