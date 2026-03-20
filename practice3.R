
# mean estimation METHOD 1 
ages <- c(10,7,15,9,10,14,9,9,12,7)
av_age <- mean(ages)
print(av_age)
median(ages)
sd_age <- sd(ages)
print(sd_age)
N <- length(ages)

# Null hypothesis
age_0 <- 10

# t - testing (normalised) 
t <- (av_age - age_0) / (sd_age / sqrt(N))

# hypothesis testing - two - tailed p-values 
p_val <- 2 * (1 - pt(abs(t), df = N - 1))

# significance lvl is 5%
if (p_val > 0.05) {
  cat("p =", round(p_val, 2), "- Fail to reject null hypothesis\n")
} else {
  cat("p =", round(p_val, 2), "- Reject null hypothesis\n")  
}

#method 2 

alpha <- 0.05
t_star <- qt(p = 1 - alpha/2, df = N - 1)

if (abs(t) > t_star) {
  cat("Reject the null hypothesis\n")
} else {
  cat("Fail to reject the null hypothesis\n")
}


#Hypothesis Testing <- built in T test 

result <- t.test(ages, 
                 mu = age_0,
                 alternative = "two.sided",
                 var.equal = FALSE)
print(result)




