Sly <- read.csv("D:\\aa data science\\simple linear regression\\assignment no 4\\Salary_Data.csv")
View(Sly)

# Exploratory data analysis
summary(Sly)

#Scatter plot
plot(Sly$ YearsExperience     , Sly$ Salary        )  # plot(X,Y)

?plot

attach(Sly)


#Correlation Coefficient (r)
cor( YearsExperience    , Salary  )             # cor(X,Y)

# Simple Linear Regression model
reg <- lm(  Salary   ~  YearsExperience     )# lm(Y ~ X)

summary(reg)
plot(reg)
pred <- predict(reg)

reg$residuals
sum(reg$residuals)

mean(reg$residuals)
sqrt(sum(reg$residuals^2)/nrow(dtime))  #RMSE

sqrt(mean(reg$residuals^2))

confint(reg,level=0.95)
predict(reg,interval="predict")


