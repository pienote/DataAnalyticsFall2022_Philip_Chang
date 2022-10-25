mtcars
head(mtcars)
str(mtcars)
model1 = lm(mpg ~ cyl + wt, data = mtcars)
model1
help("cooks.distance")
plot(model1, pch=18, col='red', which=c(4))

cooks.distance(model)
CooksDistance = cooks.distance(model)

round(CooksDistance, 5)
sort(round(CooksDistance, 5))

library(ISLR)
head(Hitters)
dim(Hitters)
is.na(Hitters)
HittersData <- na.omit(Hitters)
dim(HittersData)
glimpse(HittersData)

SalaryPredictionModel1 <- lm(Salary~., data=HittersData)
summary(SalaryPredictionModel1)

cooksD <- cooks.distance(SalaryPredictionModel1)
influential <- cooksD[(cooksD > (3 * mean(cooksD, na.rm=TRUE)))]
influential

names_of_influential <- names(influential)
names_of_influential
outliers <- HittersData[names_of_influential,]
Hitters_Without_Outliers <- HittersData %>% anti_join(outliers)

SalaryPredictionModel2 <- lm(Salary~., data=Hitters_Without_Outliers)
summary(SalaryPredictionModel2)

