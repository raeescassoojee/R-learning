data <- read.csv("Salary_dataset.csv")
summary(data)
  
#Fit the data
model <- lm(Salary ~ YearsExperience, data = data)
summary(model) #look at R^2

#stats of model - residuals
residuals <- residuals(model)
hist(residuals, xlab = "residuals", main = "histo of residuals")
plot(model$fitted.values, residuals, xlab = "fitted", ylab = "residuals", main= "residuals vs fitted")

abline(h=0, col = 'red')

#Residual standard error (rse)

rse <- sqrt(sum(residuals^2)/df.residual(model))
cat("RSE", rse)

cat("R-squred", summary(model)$r.squared)

#Confidence intervals
confint(model)

#hypothesis testing
anova(model)

#Confidence_interval on the new expected value
new_obs <- data.frame(YearsExperience = 7.8)
predict(model, newdata = new_obs, interval = "confidence")



