#!/usr/bin/env bash

archive=libraqm-0.10.1

./download-and-extract.sh $archive https://raw.githubusercontent.com/python-pillow/pillow-depends/main/$archive.tar.gz

pushd $archive

meson build --prefix=/usr && ninja -C build install

popd

