# Discrete Uniform Distribution

rdu <- function(n,k) sample(1:k, n, replace=T)
randomdu <- rdu(100000, 8)
tabledu <- table(randomdu)
barplot(tabledu)

# P(X = 3), d is used for P = _
ddu <- function(x, k) ifelse(x>=1 & x<=k & round(x)==x, 1/k, 0)
ddu(3, 8)

# P(X <= 3), p is used for P <= _
pdu <- function(x, k) ifelse(x<1, 0, ifelse(x<=k, floor(x)/k, 1))
pdu(3, 8)



# Bernoulli

rbern(100000, 1/6)
randomber <- rbern(100000, 1/6)

# P(X = 1)
tableber <- table(randomber)
barplot(tableber)

# P(X = 1)
dbern(1, 1/6)

# P(X <= 1)
pbern(1, 1/6)



# Binomial

randombinom <- rbinom(100000, 5, 0.25)
table(randombinom)
tablebinom <- table(randombinom)
barplot(tablebinom)

# P(X = 3)
dbinom(3, 5, 0.25)

# P(X <= 2)
pbinom(2, 5, 0.25)

# P(X >= 4)
1 - pbinom(3, 5, 0.25)



# Poisson

dpois(1, 100)

# P(X = 1)
dbinom(1, 10000, 0.01)

# P(X = 7)
dbinom(7, 10, 0.15)

# P(X <= 5)
# TBC



# Continuous Uniform Distribution

?runif
x = runif(10000, 32, 42)
hist(x)

# 2, pbinom/punif = P(X < x)
punif(40, 32, 42) - punif(32,32,42)

# 3
punif(1000, 990, 1100)

# 4, E(X) = 27; min - 0 ; max = 54
1 - punif(27, 0, 54)



# Exponential

Z = rexp(4000, 1/6)
hist(Z)

# 2
pexp(160, 1/180)

# 3
1 - pexp(8, 1/6)
pexp(8, 1/6) - pexp(4, 1/6)



# Normal

?pnorm

# 1
pnorm(1.20)  # Left
1 - pnorm(1.88)  # Right

# 2
qnorm(0.05)  # What is the z that refers to the given probability (less than)
qnorm(1 - 0.05)  # (greater than)

# 3
qnorm(0.05) ; qnorm(0.95)  # Area in the middle

# 5 (BUN)
pnorm(2.30, 4.80, 1.17)  # Left
1 - pnorm(5.97, 4.80, 1.17)  # Right
pnorm(7.14, 4.80, 1.17) - pnorm(2.11, 4.80, 1.17)  # Between
qnorm(0.10, 4.80, 1.17)  # Highest among...
qnorm(0.025, 4.80, 1.17) ; qnorm(0.975, 4.80, 1.17)  # Middle

# ???
A = rnorm(10000, 4.8, 1.17)
hist(A)
mean(A)
