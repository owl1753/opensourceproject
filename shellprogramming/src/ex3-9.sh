#!/bin/sh

#!/bin/bash

DB_FILE="DB.txt"

while true
do
    echo "==================="
    echo "1) 팀원 정보 추가"
    echo "2) 팀원과 한 일 기록"
    echo "3) 팀원 검색"
    echo "4) 수행 내용 검색 (날짜/내용)"
    echo "5) 종료"
    echo "==================="
    read -p "선택> " choice

    case $choice in
        1)
            read -p "이름: " name
            read -p "전화번호: " phone
            echo "[INFO] 이름:$name / 전화:$phone" >> $DB_FILE
            echo "저장되었습니다."
            ;;
        2)
            read -p "날짜(예: 2024-05-20): " date
            read -p "한 일: " work
            echo "[LOG] 날짜:$date / 내용:$work" >> $DB_FILE
            echo "저장되었습니다."
            ;;
        3)
            read -p "검색할 이름: " search_name
            echo "--- 검색 결과 ---"
            grep "$search_name" $DB_FILE
            ;;
        4)
            read -p "검색할 날짜 또는 내용: " search_term
            echo "--- 검색 결과 ---"
            grep "$search_term" $DB_FILE
            ;;
        5)
            echo "종료합니다."
            break
            ;;
        *)
            echo "잘못된 선택입니다."
            ;;
    esac
    echo ""
done