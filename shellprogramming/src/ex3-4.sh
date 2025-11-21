#!/bin/bash

scores=()

while true
do
    echo "==================="
    echo "1) 과목 성적 추가"
    echo "2) 입력된 모든 점수 보기"
    echo "3) 평균 점수 확인"
    echo "4) 평균 등급 (GPA) 변환"
    echo "5) 종료"
    echo "==================="
    read -p "선택> " choice

    case $choice in
        1)
            read -p "점수를 입력하세요: " input_score
            scores+=($input_score)
            echo "추가되었습니다."
            ;;
        2)
            echo "--- 전체 점수 목록 ---"
            for s in "${scores[@]}"; do
                echo "$s"
            done
            ;;
        3)
            sum=0
            count=${#scores[@]}
            if [ $count -eq 0 ]; then
                echo "입력된 점수가 없습니다."
            else
                for s in "${scores[@]}"; do
                    sum=$((sum + s))
                done
                avg=$((sum / count))
                echo "평균 점수: $avg"
            fi
            ;;
        4)
            sum=0
            count=${#scores[@]}
            if [ $count -eq 0 ]; then
                echo "데이터가 없습니다."
            else
                for s in "${scores[@]}"; do
                    sum=$((sum + s))
                done
                avg=$((sum / count))

                # 등급 변환 (정수 기준)
                if [ "$avg" -ge 90 ]; then
                    echo "평균 등급: A (GPA 4.0)"
                elif [ "$avg" -ge 80 ]; then
                    echo "평균 등급: B (GPA 3.0)"
                elif [ "$avg" -ge 70 ]; then
                    echo "평균 등급: C (GPA 2.0)"
                else
                    echo "평균 등급: F (GPA 0.0)"
                fi
            fi
            ;;
        5)
            echo "프로그램을 종료합니다."
            break
            ;;
        *)
            echo "잘못된 입력입니다. 1~5 사이의 숫자를 입력하세요."
            ;;
    esac
    echo ""
done