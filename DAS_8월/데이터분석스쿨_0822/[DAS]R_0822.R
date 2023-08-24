# 코드 실행: ctrl + enter
# 커서가 있는 줄이 실행되며 모두 실행하고 싶을 때는 블록 씌우고 ctrl + enter

print('hello world')
print('hello R Studio')

# 변수 할당
# 기호 = 또는 <- (alt + -) 사용
a = 1
var1 <- 0
var1

# 똑같은 변수 var1에 1을 넣으면 이전 값에서 새로운 값인 1로 변경됨
var1 <- 1
var1

var2  <- 2
var2

var3 = 3
var3

var4 = 'hello'
var4

var5 <- 'world'
var5

# 변수.멤버 형태
students.code<-'01'
students.name<-'라이캣'
students.age<-14

students.code
students.name
students.age

# 변수명인 students로만 실행시키면 안나옴
students


# 변수 출력하는 3가지 방법

# 1. 변수명 출력
x<-10
y<-20
z<-x+y
x
y
z
x;y;z # 한 번에 여러 개의 출력은 세미콜론 사용

# 2. cat() 함수 사용
cat(z)

# 여러 숫자 출력
cat(1,2,3)

# 숫자, 문자열 출력
cat(1,2,3,"hello")

# 변수에 값을 할당한 후 출력
cat(1,x,"*",y," = ",z,"입니다. \n") # \n : 줄바꿈을 위한 제어문자

# 변수에 숫자, 문자열 할당한 후 출력
text<-"hello world"
cat(x,y,z,text)


# 3. print() 함수 -> 하나의 값, 변수를 출력할 때 사용, 문자 + 숫자를 같이 사용할 수 없음
print(x)
print(1)
print('hello')
print(1, 2, 3)
print(1, 2, 3, 4) # 4를 매개변수로 받아드려서 에러 발생 -> na.print=' ' 를 사용해야함
print(1, 2, 3, 4, na.print='')

print('a', 'b', 'c') # 에러 발생 -> paste() 추가
print(paste('a', 'b', 'c'))
cat('a', 'b', 'c')

print(1, 'hello world') # 에러 발생 -> quote=T 추가
print(1, 2, 'hello world', quote=T)



# 데이터 타입

# 문자형
int <- 10
int

var4 = 'hello'
var4

# 논리형은 TRUE / FALSE 대문자로 작성해야함
boolean <- TRUE
boolean



# 범주형 데이터 생성 - c함수 사용
gender <- c('man', 'woman', 'woman', 'man', 'man')
gender

# plot함수에는 수치형 데이터만 넣을 수 있음 -> 에러 발생
plot(gender)

# 수치형 데이터로 변환 -> factor 사용
ngender <- c(1,2,2,1,1)
gender <- factor(ngender, labels=c('man', 'woman'))
gender

table(gender)

plot(gender)

ogender<-factor(gender, levels=c("man","woman"), ordered=T)
ogender

plot(ogender)


# datetime 형변환
today <- '2023/04/25'
as.Date(today, '%Y/%m/%d')

today <- '23-08-22'
as.Date(today, '%y-%m-%d')

today <- '23-08-32'  # 없는 날짜 입력 시, NA 발생
as.Date(today, '%y-%m-%d')

strptime('2023-05-30 14:47:05', format='%Y-%m-%d %H:%M:%S')


# 결측값 확인
is.numeric(today)
is.integer(0.1)
is.integer(4)


# 자료형과 자료 구조 확인
# mode(변수) : 데이터 타입 확인
mode(int)
mode(boolean)
mode(var4)
# typeof(변수) : 데이터 타입 확인
typeof(int)
typeof(boolean)
typeof(var4)

mode(1L)
typeof(1L)  # integer라고 뜸
# class() 함수
class(int)
class(var4)
class(boolean)
class(1L)
# str(변수)는 값 + 데이터 타입 확인
str(int)
str(var4)
str(boolean)
str(1L)

c(1, 2, 3, 4, 5)
c(1:5)

seq(1, 10, 2)
rep(1:3, 4)
rep(1:3, 1:3)
rep(1:3, each=2)

age = c(10, 11, 12)
names(age) <- c('알리', '개리', '라이캣')
age
names

age = NULL
age

age <- c(10, 11, 12)
age * 5
age

x = 1:10

y <-  1:3
z <- c(x, y)
z

x = 1:5
x[1]
x[3] = 3.5
x
x[c(1,3)]

x = 1:10
x[2:4]


length(x)
rev(x)
x <- rep(1:3, 1:3)
x

unique(x)

x = 1:10
x > 4
subset(x, x>4)


# 벡터(행렬)
data = c(1:12)
matrix(data, nrow=3, ncol=4)

matrix(data)
matrix(data, nrow=3, byrow=T)

# 행렬 이름 지정
matrix(data, nrow=3, ncol=4, dimnames = list(c('A','B','C'), c('A1','B1','C1','D1')))
matrix(data, nrow=3, ncol=4, dimnames = list(c('A','B','C'), NULL))
matrix(data, nrow=3, ncol=4, dimnames = list(NULL, c('A1','B1','C1','D1')))

x <- 1:5
y <- 6:10
matrix1 <- rbind(x, y)  # row로 붙이기
matrix2 <- cbind(x, y)  # col로 붙이기

matrix1[1,] # 열
matrix1[,1] # 행

matrix1
matrix1[2,3]
matrix1[2,c(1:3)]

# 길이 확인
length(matrix1)

ncol(matrix1)
nrow(matrix1)

rev(matrix1)

apply(matrix1, 1, mean)  # 1은 행기준, 2는 열기준
apply(matrix1, 2, mean)

# 행렬에 이름 정하기
rownames(matrix1) <- c('X','Y')
matrix1

colnames(matrix1) <- c('A','B','C','D','E')
matrix1

dim(matrix1)  # 행렬 갯수 확인하기


# 복습 문제 2번
s <- seq(1, 10, 2)
sum(s)

# 복습 문제 3번
x = 1:8
matrix(x, nrow=2, byrow=T, dimnames = list(NULL, c('c언어','python','java','javascript')))
