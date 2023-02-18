#!/bin/sh
md5_hash="f21656b51c9907fc6993b64ef216d994"
curl https://www.python.org/ftp/python/3.7.16/Python-3.7.16.tgz -o python3.7.16.tgz
md5_sum=$(md5sum ./python3.7.16.tgz | cut -d " " -f1)
if [ "$md5_hash" != "$md5_sum" ];then
    rm -rf python3.7.16.tgz
    echo "[x] python 3.7.16 download signature could not be verified"
    exit 1
fi

tar -xf python3.7.16.tgz

exit 0

