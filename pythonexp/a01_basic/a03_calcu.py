'''
Created on 2022. 7. 5.

@author: sangjun

# 파이썬 특징 연산자
1. / : 소숫점 이하까지 표현
2. // : 소숫점 이하절삭
3. ** : 변수의 제곱처리

'''
num01 = 10
num02 = 3
print(num01/num02)
print(num01//num02)
print(num01**num02)
#ex) 곰돌이 3마리가 빵 20개를 동일하게 배분하여 먹은 빵의 갯수와 남은빵의 갯수를 변수와
#    연산자를 통해서 출력
bear = 3
bread = 20
print('동일하게 먹은빵의갯수:',bread//bear)
print('남은빵의 갯수:', bread%bear)
'''
# 비교연산자
1. 어떤것이 큰지, 작은지, 같은지를 비교하는 연산자
    ==, !=, >, <, <=, >=
# 논리연산자
1. 비교연산자가 여러번 필요할 때 사용
2. and, or, not(비교 또는 논리연산)
    ex) 나이가 10이상 18미만 청소년 요금제 적용
'''
age = 15
isPayCal = age>=10 and age<18
isNotPayCal = not(age>=10 and age<18)
print("나이: ",age)
print("청소년 요금제 적용여부:", isPayCal)

# ex) 구매가격과 갯수를 입력받아 1000000 이상이면 MVP고객이다
#    MVP고객여부를 출력하세요

price = int(input("구매가격을 입력하세요:"))
cnt = int(input("구매갯수를 입력하세요:"))
tot = price*cnt
isMVP = tot>=1000000
print("총 구매금액:",tot)
print("MVP여부:",isMVP) # print("MVP여부:",tot>=1000000) 으로 써도무방하다(boolean값 처리)






