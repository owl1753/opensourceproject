#!/bin/bash

run_ls() {
    echo "함수 진입: ls 명령어를 실행합니다."
    cmd="ls $1"
    
    echo "실행할 명령어: $cmd"
    eval $cmd
}

echo "프로그램 시작"
run_ls "$1"