#!/bin/bash

if [ ! -f "my_prog.py" ]; then
    echo "Error: my_prog.py 파일이 없습니다."
    exit 1
fi

echo "--- 셸 스크립트 시작 ---"
echo "Python 스크립트를 실행합니다..."

python3 my_prog.py "$@"

echo "--- 셸 스크립트 종료 ---"