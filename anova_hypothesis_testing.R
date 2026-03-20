#Hypothesis testing: Anova testing  

N <- 500

#create offer assignment 
offers <- sample(c("offer1", "offer2", "nopromo"),
                 size = N,
                 replace = TRUE
                 )

#iNIT PURCHASE SIZE VECTOR 
purchase_size <- rep(0,N)

#Generate purchase amount for each offer 
for(i in seq_len(N)){
  if(offers[i] == "offer1"){
    purchase_size[i] <- rnorm(1, mean = 80, sd = 30)
  }else if(offers[i] == "offer2"){
    purchase_size[i] <- rnorm(1, mean = 85, sd = 30)
    
  }else{
    purchase_size[i] <- rnorm(1, mean = 40, sd = 30)
  }
}

#create data frame 
datasets <- data.frame(
  offer = factor(offers),
  purchase_size = purchase_size
)
model <- aov(purchase_size ~ offer, data = datasets)
summary(model)

#plot
par(mfrow = c(1,1))
plot(model)


#tukey post hoc test
TukeyHSD(model)

#plot
par(mfrow = c(2,2))
plot(model)

