install.packages("ggplot2")
library(ggplot2)
install.packages("tidyr")
library(tidyr)


# Cost Curves
ggplot(cost.curves, aes(x = Q)) +
  geom_line(aes(y = FC, color = "FC"), linewidth = 1.1) +
  geom_line(aes(y = VC, color = "VC"), linewidth = 1.1) +
  geom_line(aes(y = TC, color = "TC"), linewidth = 1.1) +
  labs(title = "Cost Curves",
       y = "Cost",
       color = "Type")


# Average Cost Curves
ggplot(cost.curves, aes(x = Q)) +
  geom_line(aes(y = AFC, color = "AFC"), linewidth = 1.1) +
  geom_line(aes(y = AVC, color = "AVC"), linewidth = 1.1) +
  geom_line(aes(y = ATC, color = "ATC"), linewidth = 1.1) +
  geom_line(aes(y = MC, color = "MC"), linewidth = 1.1) +
  labs(title = "Average Cost Curves",
       y = "Cost per Unit",
       color = "Type")
