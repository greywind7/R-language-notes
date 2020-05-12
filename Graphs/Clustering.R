# *****************Hierarchal Clustering*****************
library(fields)
library(ggplot2)
# dist() calculates the pairwise distances
# hclust() takes the pairwise dist. variable and gives a dendogram
# To view your dendogram you need plot() to plot it
# plot with as.dendogram() for a neater one
# heatmap() creates a heatmap

# *****************K-means Clustering*****************
# generalized minimum distance func for three clusters
distMin <- function(x,y,cx,cy){
    distTmp <- matrix(NA,nrow=3,ncol=length(x))
    distTmp[1,] <- (x-cx[1])^2 + (y-cy[1])^2
    distTmp[2,] <- (x-cx[2])^2 + (y-cy[2])^2
    distTmp[3,] <- (x-cx[3])^2 + (y-cy[3])^2  
    return(distTmp)
}
# sample x and y points
x <- c(runif(100,0,100))
y <- c(runif(100,0,100))
plot(x,y,type = "n")
# Sample cluster centroid points
cx <- c(50,25,75)
cy <- c(25,75,25)
minD <- distMin(x,y,cx,cy)
# Plot the centroids
for(i in 1:200){
        points(cx,cy,col=c("red","blue","green"),pch=3,cex=2,lwd=2)
        minD <- distMin(x,y,cx,cy)
        newClust <- apply(minD,2,which.min)
        cols <- c("red","blue","green")
        # Plotting points  acc to the cluster colors
        points(x,y,pch=19,col=cols[newClust])
        # getting the new centroid 
        cx <- tapply(x,newClust,mean)
        cy <- tapply(y,newClust,mean)
        # You have the new centroid, repeat the process
}
# dev.off()
# This BS could have been avoided by using kmeans fn
km <- kmeans(cbind(x,y),3)
plot(x,y,type="n")
points(x,y,col=km$cluster,pch = 19)
points(km$centers,col=km$centers,pch = 21, cex = 2.5)
# *****************Extras*****************
# which.min is a fn that can be used with apply to get min from row/col
# image fn can be used to display data
# ***************************************************