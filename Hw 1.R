Raw = read.table("Prob1InjectorPumps.txt", header = F)
Raw
fix(Raw)
y = Raw[order(Raw$V1),]
y

stem(y, scale = 2)

summary(y)
quantile(y, c(.05,.95))


# Question 1e
pdf("1e.pdf")
hist(y, prob = T, xlab = "Plunger Relative Diameter (microns)", ylab = "count", col = "green", main = "Histogram of Plunger Relative Diameter")
## overlay with the theoretical pdf
m <-mean(y);std <-sqrt(var(y))
curve(dnorm(x, mean=m, sd=std), col= 2, lwd=2, add=TRUE)
dev.off()


# Question 1f: ECDF generation
plot(ecdf(y), main = "ECDF of Plunger Relative Diameter (microns)")
curve(pnorm(x, m, std), col= 2, lwd=2, add=TRUE)


# Question 1g: qq plot
qqnorm(y)
qqline(y, col = "black")


# Question 2e
q2 = c(106, 4972, 7140, 7661, 1776, 2471, 5550, 6959, 3541, 747, 5142, 25691, 11345, 10067, 5434)
q2
qqnorm(q2, col = "steelblue")
qqline(q2)


plot(ecdf(q2))
curve(pexp(x,0.000152), add=TRUE, col= 2)

install.packages('tinytex')

# Question 1h (i):

qt(0.05,94)


library(MASS)
library(stats4)


qt(0.05,94)
qnorm(0.05)


tinytex:::is_tinytex()

Sys.which('pdflatex')

xfun::session_info('rmarkdown')
tinytex::tinytex_root()
Sys.getenv('PATH')
(tinytex::tlmgr_path())

tinytex::uninstall_tinytex()

tinytex:::is_tinytex()
install.packages('tinytex')
tinytex::install_tinytex()

library("ggplot2")

