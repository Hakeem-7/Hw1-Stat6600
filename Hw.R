x = read.table("Prob1InjectorPumps.txt", header = F)
x
fix(x)
y = x[order(x$V1),]
y

stem(y, scale = 2)

summary(y)
quantile(y, c(.05,.95))

pdf("1e.pdf")
hist(y, prob = T, xlab = "Plunger Relative Diameter (microns)", ylab = "count", col = "blue", main = "Histogram of Plunger Relative Diameter")
## overlay with the theoretical pdf
m <-mean(y);std <-sqrt(var(y))
curve(dnorm(x, mean=m, sd=std), col= 2, lwd=2, add=TRUE)
dev.off()

## ECDF generation
plot(ecdf(y), main = "ECDF of Plunger Relative Diameter (microns)")


## qq plot
qqnorm(y)
qqline(y, col = "darkred")

## from visual examination, the sample data closely align with the normality line. hence, it is safe to conclude that the data came from a normal population.

qnorm(0.05)








