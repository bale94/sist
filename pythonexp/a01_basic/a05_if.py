'''
Created on 2022. 7. 5.

@author: sangjun
# 조건문 처리
1. 기본 형식
    1) 조건문
        if 조건식:
            처리할내용1
            처리할내용2 : 탭간격을 반드시 지켜야한다
        if 조건식:
            조건식이 true일때 처리할 내용
        else:
            조건식이 false일때 처리할 내용
'''
'''
print("프로그램 시작")
age=27
if age>=18: # 해당조건식일때만 출력
    print("성인입니다")
    print("성인입니다")
    print("성인입니다")
print("프로그램 종료")
print("# 분기 조건 #")
point= 80
if point>=60:
    print("합격입니다")
else:
    print("불합격입니다")
# ex) 쥔 구슬의 갯수를 입력하세요 홀/짝으로 구분하여 출력
grab = input("쥔 구슬의 갯수를 입력하세요: ")
if int(grab)%2==0:
    print("짝")
else:
    print("홀")
'''
'''
# 여러개의 분기 조건
if 조건1:
    처리할 내용
elif 조건2:
    처리할 내용
elif 조건3:
    처리할 내용
else:
    처리할 내용
'''
'''
age=15
if age<=7:
    print("미취학아동")
elif age<=13:
    print("초등학생")
elif age<=16:
    print("중학생")
elif age<=19:
    print("고등학생")
else:
    print("성인")
'''

# ex) 입력점수에 따른 학점 등급 A,B,C,D,F를 처리하세요
score=int(input("점수를 입력하세요: "))
if score>=90:
    print("A")
elif score>=80:
    print("B")
elif score>=70:
    print("C")
elif score>=60:
    print("D")
else:
    print("F")










