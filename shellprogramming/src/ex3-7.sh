#!/bin/bash

while true
do
    echo "==================="
    echo "1) 사용자 정보 확인"
    echo "2) CPU 사용률 확인 (top)"
    echo "3) 메모리 사용량 확인 (free)"
    echo "4) 디스크 사용량 확인 (df)"
    echo "5) 종료"
    echo "==================="
    read -p "선택> " choice

    case $choice in
        1)
            echo "--- 사용자 정보 ---"
            whoami
            id
            ;;
        2)
            echo "--- CPU 정보 (상위 5줄) ---"
            top -b -n 1 | head -n 5
            ;;
        3)
            echo "--- 메모리 정보 ---"
            free -h
            ;;
        4)
            echo "--- 디스크 정보 ---"
            df -h
            ;;
        5)
            exit 0
            ;;
        *)
            echo "잘못된 입력입니다."
            ;;
    esac
    echo ""
done