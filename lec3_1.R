# lec3_1.r
# Working directory
# Data import, frequency, histogram, 
# attach, detach

# set working directory
# change working directory 
setwd("C:/Users/Jay/Desktop/R_basic/moocr")

# check the current working directory
getwd()

# xls파일의 경우 데이터를 csv로 저장한다음 r데이터로 불러옴

# 1. Read csv file : brain weight data
brain<-read.csv("brain2210.csv")
head(brain)
dim(brain)

# 2. example for using 'attach'

# to get frequency of male and female (brain data)
table(brain$sex)

# using the command 'attach'
# attach : 데이터 이름을 따로 지정하지 않아도 됨
attach(brain)

# get frequency of male and female
# table(변수) : 빈도 구가힉 (male, female 몇명씩?)
table(sex)

# histogram of brain weight
# hist(brain$brainwt)
hist(wt)

detach(brain)


# several sheets in Excel file
install.packages("readxl")
library(readxl)

mtcars1 <- read_excel("D:/tempstore/moocr/mtcarsb.xlsx", 
                      sheet = "mtcars")
mtcars1 <- read_excel("D:/tempstore/moocr/mtcarsb.xlsx", 
                      sheet = 1)
head(mtcars1)

brain1<-read_excel("D:/tempstore/moocr/mtcarsb.xlsx", 
                   sheet = "brain")
head(brain1)

brainm<-read_excel("D:/tempstore/moocr/mtcarsb.xlsx", 
                   sheet = 2)
head(brainm)

