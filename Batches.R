# SINGLE BATCHES

stem(data1, scale=2)
stem(data2, scale=3)

# L = [10log(n)] to get a symmetrical curve of data
floor(10 * log10(20))  # Value of L
20.3 - 18.1  # Value of R
2.2 / 13  # Closer to 2 than 5 and 10. So split based on 2 leaves per stem
stem(data3, scale=3)  # 0's reflect the numnber of leaves (this case its left skewed)


# Ranking and Depth
install.packages("ACSWR")
library(ACSWR)
lval(data4)
fivenum(data4)  # Shows median M, lower and upper F, lowest and highest values


# Outliers
mean(data4)
sd(data4)
boxplot(data4, horizontal=TRUE)




# MULTIPLE BATCHES

str(world_density.1)
world_density.1$Continent <- as.factor(world_density.1$Continent)

install.packages("tidyverse")
library(tidyverse)

ggplot(world_density.1, aes(x=Continent, y=GrowthRate)) + geom_boxplot(fill="azure") +
  coord_flip() + xlab("Continent")

ggplot(world_density.1, aes(x=Continent, y=Density)) + geom_boxplot(fill="orange") +
  coord_flip() + xlab("Continent")  # Bad output

# Spread-Level Plots
spreadsandlevels <- world_density.1 %>% group_by(Continent) %>%
  summarise(level = log(median(Density)), spread = log(IQR(Density)))
arrange(spreadsandlevels, level)
cor(spreadsandlevels$spread, spreadsandlevels$level)

ggplot(spreadsandlevels, aes(x=level, y=spread)) +
  geom_point() +
  stat_smooth(method=MASS::rlm, se=FALSE) +
  xlab("Median (Log)") +
  ylab("Spread (Log)") +
  geom_text(aes(x=level, y=spread, label=Continent))

library(MASS)
rlm(spread ~ level, spreadsandlevels)

# Reexpress the data
world_density.1 <- world_density.1 %>% mutate(Reexpressed = Density ^ (-0.074))
ggplot(world_density.1, aes(x=Continent, y=Reexpressed)) + geom_boxplot(fill="pink") +
  coord_flip() + xlab("Continent")  # Reexpressed the bad output
spreadsandlevels2 <- world_density.1 %>% group_by(Continent) %>%
  summarise(level = log(median(Reexpressed)), spread = log(IQR(Reexpressed)))

arrange(spreadsandlevels2, level)
cor(spreadsandlevels2$spread, spreadsandlevels2$level)

ggplot(spreadsandlevels2, aes(x=level, y=spread)) +
  geom_point() +
  stat_smooth(method=MASS::rlm, se=FALSE) +
  xlab("Median (Log)") +
  ylab("Spread (Log)") +
  geom_text(aes(x=level, y=spread, label=Continent))