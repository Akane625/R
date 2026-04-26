install.packages("tidyverse")
install.packages("ACSWR")
install.packages("tsapp")
library(tidyverse)
library(ACSWR)
library(tsapp)


q2 <- c(1, 5, 6, 9, 10, 11, 15, 20)
hinkley = function (x)
{ md = median(x)
  mn = mean(x)
  s = diff(quantile(x, probs = c(0.25, 0.75)))
  H = (mn - md) / s
  names(H) = "d"
  H}
hinkley(q2)


lvals <- lval(data$X3); lvals
lvals %>% mutate(LV = 1:5) %>%
  ggplot(aes(LV, mids)) + theme_classic(base_size = 25) + geom_point()


edit(symplot)
symplot(data$X2)


ggplot(data, aes(X1)) +
  geom_histogram(color = "blue", fill = "white", bins=15) +
  geom_density(aes(x = X1)) +
  theme_classic(base_size=15) +
  labs(x = "X1")
ggplot(data, aes(X2)) +
  geom_histogram(color = "blue", fill = "white", bins=15) +
  geom_density(aes(x = X2)) +
  theme_classic(base_size=15) +
  labs(x = "X2")
ggplot(data, aes(X3)) +
  geom_histogram(color = "blue", fill = "white", bins=15) +
  geom_density(aes(x = X3)) +
  theme_classic(base_size=15) +
  labs(x = "X3")





