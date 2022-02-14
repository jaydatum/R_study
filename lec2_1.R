# lec2_1.r

## 벡터 및 행렬 생성 ##

# vector 
x<-c(1,3,5,7,9)
x[3]

# subset of vector : delete the first element
x[-1]
# subset of vector : delete the first two element
x1<- x[-c(1,2)]
x1
# subset of vector : delete the 1st to the 3rd element
x2<-x[-c(1:3)]
x2

# create vector using 'seq' (sequence)

# sequence of 20 values 
y1<-seq(0,10, length=20)

# sequence of (1 to 10) by 0.5
y2<-seq(0,10, by=0.5)

# using rep (replication)
z1<-rep(1:4, 2)
z1

z2<-rep(1:2,5)
z2


# <combine vectors in a row or column>
# cbind : column bind (열 기준으로 결합)

c1<-c(2,4,6,8,10)
c2<-cbind(x, c1)
c2

# rbind : row bind(행 기준으로 결합합)
c3<-rbind(x,c1)
c3


# Give name to a vector
gender<-c(0,1)
names(gender)<-c("female", "male")
gender

length(gender)


# categorical varaiables : factor
size<-c("S", "M","L","XL")
# define size as a factor (categorical variable)
size_factor<-factor(size)

size_factor

is.factor(size_factor)
# or in same output
size_factor2 <- factor(size, 
                       levels = c("S", "M","L","XL")) 
size_factor2


# give order for categorical variable
size_factor3 <- factor(size, ordered = TRUE, 
                       levels = c("S", "M","L","XL")) 
size_factor3



# create matrix
# two row matrix with 1 to 10
m1<-matrix(1:10, nrow=2)
m1
# three columns matrix with 1:6 
m2<-matrix(1:6, ncol=3)
m2
# matrix filled by rows, defalut: filled by cloumns
# 1열부터 채우는 것이 디폴트, 여기서는 byrow=T 이므로 1행부터 채워서 생성
m3<-matrix(1:6, nrow=2, byrow=T)
m3
# help (matrix)

# higher order of array (고차원 행렬) : array 이용
a1<-array(c(1:18), dim=c(3,3,2)) # 3 by 3 행렬 2개 만들어라
a1
a1[, ,1]
a1[, ,2]


