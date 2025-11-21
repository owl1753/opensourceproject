#!/bin/bash

if [ ! -d "DB" ]; then
    echo "'DB' 폴더가 없어 생성합니다."
    mkdir DB
else
    echo "'DB' 폴더가 이미 존재합니다."
fi

echo "DB 폴더에 파일 5개를 생성합니다."
touch DB/file1.txt DB/file2.txt DB/file3.txt DB/file4.txt DB/file5.txt

echo "DB 폴더를 압축합니다 -> DB.tar.gz"
tar -czf DB.tar.gz DB/

if [ ! -d "train" ]; then
    mkdir train
fi

echo "train 폴더에 링크를 생성합니다."
cd train
ln -s ../DB/file1.txt link_file1
ln -s ../DB/file2.txt link_file2
ln -s ../DB/file3.txt link_file3
ln -s ../DB/file4.txt link_file4
ln -s ../DB/file5.txt link_file5

echo "작업 완료. train 폴더 내부 확인:"
ls -l