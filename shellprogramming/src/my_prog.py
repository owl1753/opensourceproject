import sys

# 파이썬 코드입니다
print("[Python] 프로그램 시작")

# 쉘에서 넘겨준 인자들을 받아서 출력
args = sys.argv[1:] 
print(f"[Python] 입력된 인자 목록: {args}")

print("[Python] 프로그램 종료")