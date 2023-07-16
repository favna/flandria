#!/usr/bin/env bash

archive=libimagequant-4.2.0

./download-and-extract.sh $archive https://raw.githubusercontent.com/python-pillow/pillow-depends/main/$archive.tar.gz

pushd $archive/imagequant-sys

cargo install cargo-c
cargo cinstall --prefix=/usr --destdir=.

popd
