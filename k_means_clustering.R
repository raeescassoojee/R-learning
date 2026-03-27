#k means clustering 
#load iris dataset
data(iris)
head(iris)
str(iris)
# data set showing a flower built into R 

#remove species 
#prepare data basically (speicies is categorical, hence we dont want it for kmeans)
iris_data <- iris[, 1:4] # all rows , only cols 1 - 4

#scale data as last vals will dominate data
iris_scaled <- scale(iris_data)

#want to choose optimal k (elbow method) (optimal nr of clusters)
wss <- numeric(15)

#we need to calculate the wss of each number of clusters
for(k in 1:15){
  kmeans_model <- kmeans(iris_scaled, centers =k, nstart = 25)
  wss[k] <- kmeans_model$tot.withinss
}
plot(1:15, wss, type = "b",
     main = "Elbow meth",
     xlab = "Number of clusters (k)",
     ylab = "WSS"
)

k <- 3

#Apply kmeans clustering

kmeans_result <- kmeans(iris_scaled, centers = k, nstart =25)
kmeans_result 

#clusters
kmeans_result$cluster

#cluster size
kmeans_result$size

#view cluster
kmeans_result$centers

#add cluster results to original dataset
iris_data$Cluster <-kmeans_result$cluster

table(iris$Species, iris_data$Cluster)

#cluster summary statistics
aggregate(iris[,1:4], by = list(Cluster = iris_data$Cluster),
          mean)
View(iris_data)
