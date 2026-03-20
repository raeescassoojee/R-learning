#Hyp testing: Comparing 2 means 

#Gym <- maale and woman train the same amoouint hrs 

N_m <- 100 
m_tr <- rnorm(N_m, mean = 4.2, sd = 2.3)

N_f <- 150 
f_tr <- rnorm(N_f, mean = 5.8, sd = 3.1)

t_result <- t.test(m_tr, f_tr, 
                   var.equal = FALSE,
                   alternative = "two.sided")
print(t_result)

#Extract key values for interpretation 

t_stat <- t_result$statistic
df <- t_result$parameter
p_value <- t_result$p.value

alpha <- 0.05 

if(p_value < alpha){
  print("We reject the null hypothesis")
}else{
  print("We fail to reject the null hypothesis")
}


# Visualisation
min_v <- min(c(m_tr, f_tr)) 
max_v <- max(c(m_tr, f_tr)) 

par(mfrow = c(1, 1))

# Males
plot(1:N_m, m_tr,
     xlab = "Participant",
     ylab = "Hours of training",
     main = "Hours of training per week: Males vs Females",
     col = "blue", pch = 19,
     ylim = c(min_v - 0.5, max_v + 0.5),   
     xlim = c(1, max(N_m, N_f))
)

# Females graph to overlay
points(1:N_f, f_tr,       
       col = "pink", pch = 19)

legend("topleft", c("Males", "Females"),
       col = c("blue", "pink"),
       pch = 19, cex = 0.8)

