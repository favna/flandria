#!/usr/bin/env bash

archive=$1
url=$2

if [ ! -f $archive.tar.gz ]; then
    wget -q -O $archive.tar.gz $url
fi

rmdir $archive
tar -xvzf $archive.tar.gz
