'''
Created on 2022. 7. 5.

@author: sangjun
# for문의 형식
1. for 변수 in range(시작값, 마지막값+1, 증감값):
    처리할 내용(변수)
2. for 변수 in ["사과", "바나나", "딸기"]
    처리할 내용(변수)
'''
for idx in range(3):    # range(마지막값+1): 0부터 마지막값까지 for-loop
    print(idx,"번째 안녕하세요")
for cnt in range(1,4):  # 1부터 ~ 마지막값-1까지
    print(cnt,"번째 반갑습니다")
for cnt in range(10,20,2):
    print(cnt,",",end="\t") # end: for문 한번 돌때마다 마지막에 기본 줄바꿈 외에 다른 문자열 처리시