### EXERCICE 1 ###

# milk sales data for the 3 shops per week (mon - s1, mon - s2, mon - s2, tue - s1, ....)
y1 <- c( m = 33, m = 44, m = 29, t = 16, t = 25, t = 45, w = 33, w = 19, w = 54, th = 22, th = 21, th = 49, f = 11, f = 24, f = 56)
y2 <- c( s1 = 33, s2 = 44, s3 = 29, s1 = 16, s2 = 25, s3 = 45, s1 = 33, s2 = 19, s3 = 54, s1 = 22, s2 = 21, s3 = 49, s1 = 11, s2 = 24, s3 = 56)

# split y by days (d) and by shops (s)
d <- split(y1, f = names(y1))
s <- split(y2, f = names(y2))

# means for each day
mean(d$m)
mean(d$t)
mean(d$w)
mean(d$th)
mean(d$f)

# means for each shop per week
mean(s$s1)
mean(s$s2)
mean(s$s3)

# variance for each day
var(d$m)
var(d$t)
var(d$w)
var(d$th)
var(d$f)

# variance for each shop per week
var(s$s1)
var(s$s2)
var(s$s3)

### EXERCICE 2 ###

x<- matrix(c(3,2, -1,-1), nrow = 2, ncol=2, byrow=TRUE,
           dimnames = list(c("r1", "r2"), c("c1", "c2")));x

y<- matrix(c(1,4,0, 0,1,-1), nrow = 2, ncol=3, byrow=TRUE,
           dimnames = list(c("r1", "r2"), c("c1", "c2", "c3")));y

2*x

x*x

x %*% x

t(y)

solve(x)

x %*% solve(x)

### EXERCICE 3 ###

Orange
?Orange

circ <- Orange$circumference

with(Orange, mean(circumference))
mean(circ)

var(circ)

sd(circ)
sqrt(var(circ))

summary(circ)

age <- Orange$age

boxplot(age, xlab='age (days)', horizontal=TRUE ,main="Boxplot of Orange trees
        age")
text(x=fivenum(age), labels =fivenum(age), y=1.25)

plot(age, circ, main="Scatter plot between age and circumference of Orange
     trees", xlab="age (days)", ylab="circumference (mm)")

reg <- lm(circ ~ age)
abline(reg, col='red')
coef(reg)
cor(age, circ)

### EXERCICE 4 ###

exp(sqrt(5 + 0.5 * log2(5)))


### EXERCICE 5 ###

A<- matrix(c(1,1,3, 2,4,9, 5,7,8), nrow = 3, ncol=3, byrow=TRUE,
           dimnames = list(c("r1", "r2", "r3"), c("c1", "c2", "c2")));A

B<- matrix(c(2,3,5, 3,6,7), nrow = 3, ncol=2, byrow=FALSE,
           dimnames = list(c("r1", "r2", "r3"), c("c1", "c2")));B

A %*% B

### EXERCICE 6 ###
  
A<- matrix(c(1,-2,3, -1,3,-1, 2,-5,5), nrow = 3, ncol=3, byrow=TRUE,
           dimnames = list(c("r1", "r2", "r3"), c("c1", "c2", "c2")));A

b<- matrix(c(9,6,7), nrow = 3, ncol=1, byrow=TRUE,
           dimnames = list(c("r1", "r2", "r3"), c("c1")));x

R <- solve(A) %*% b ; R # using math rules
R_bis <- solve(A,b) ; R_bis # using solve

### EXERCICE 7 ###

data <- c(73, 92, 87, 93, 61, 67, 72, 70, 66, 85, 89, 81, 81, 71, 74, 82, 85,
          63, 72, 77, 78, 95, 84, 81, 80, 70, 69, 66, 55, 83, 85, 108, 84, 68,
          90, 82, 69, 72, 87, 88)

stem(data)

hist(data, main="Histogram of the exam results",
     breaks=c(50,55,60,65,70,75,80,85,90,95,100,105,110))

boxplot(data, main="Boxplot graph of the exam result", xlab="Exam results",
        horizontal=TRUE)
text(x=fivenum(data), labels =fivenum(data), y=1.25)
?boxplot

mean(data)
var(data)
sd(data)
summary(data)
