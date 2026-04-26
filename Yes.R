# Number 1
ex1 <- c(5, 5, 8, 9, 10, 10, 10, 12)

mean(ex1)
var(ex1)
# Denominator is n-1 by default in r

# Number 3
ex3 <- sample(1:6, 100000, replace=T)
# 1:6 is 1-6, 100 is the amount of rolls r will do to experiment, replace=T means its ok that the value repeats (with replacement in short)

table(ex3)
mean(ex3)
var(ex3)

# Number 2
ex2 <- sample(c(1, 2, 3, 4),
              size=100000,
              replace=TRUE,
              prob=c(0.1, 0.3, 0.4, 0.2))
# Sample means randomly generate, no size means infinity

table(ex2)
mean(ex2)
var(ex2)


# Number 4
ex4 <- sample(2:8,
              size=100000,
              replace=T,
              prob=c(1, 2, 3, 4, 3, 2, 1)/16)
# Prob tab is same as 1/16, 2/16, ...

table(ex4)
mean(ex4)
var(ex4)

# Number 6
ex6 <- sample(c(1000, -100),
              size=100000, 
              replace=T, 
              prob=c(1/16,15/16))

table(ex6)
mean(ex6)
var(ex6)

# Activity 2
ac <- sample(c(154.64, -5000),
             size=100000,
             replace=T,
             prob=c(97/100, 3/100))
mean(ac)
var(ac)

# Mean is expected value























