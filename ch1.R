##맛보기
trees
summary(trees)
pairs(trees)

#회귀분석
cars
summary(cars)
pairs(cars)
plot(x=cars$speed, y=cars$dist, main="car data", sub="car plot sub",
     xlab="speed", ylab="displacement")
lm(dist~speed, data=cars) #y~x,speed가 종속변수임, 종속변수가 범위형인 경우/연속형인 경우우

#분산분석표(anova)
anova(lm(dist~speed, data=cars))

chickwts #병아리 몸무게, 6그룹으로 실험, 범위데이터 포함
head(chickwts)
summary(chickwts)
pairs(chickwts) 

boxplot(weight~feed, data=chickwts)  #범위데이터인 경우 유용함

#회귀분석을 통해서 feed의 차이가 병아리 무게에 영향을 주는지 분산분석해보자 
#anova를 lm 과 병행해서 분산분석표를 구한다. 
anova(lm(weight~feed, data=chickwts))

#attach 를 이용하여 table이름 생략하기\
