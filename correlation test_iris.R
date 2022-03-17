attach(iris)
iris
# pearson correlation
cor(Sepal.Length,Petal.Width)

# Correlation coefficient, p-value, CI
cor.test(Sepal.Length, Petal.Width)

head(iris)

#상관 계수
cor(iris[,1:4])

#시각화
pairs(iris[,1:4])

#if missing value exists
iris.na.test <- iris[,1:4]
iris.na.test[1,1] <- NA
iris.na.test[3,2] <- NA
iris.na.test[4,3] <- NA
head(iris.na.test)
cor(iris.na.test) # NA값 포함시 연산결과 NA

# delete NA row vector 
cor(iris.na.test, use='complete.obs')

# passing NA row vector
cor(iris.na.test, use='pairwise.complete.obs')
