# Written by Thom Daniel C. Yutuc (2DSA-2)
install.packages("ggplot2")
library(ggplot2)
install.packages("tidyr")
library(tidyr)


# Cost and Revenue Curves
ggplot(Cost.and.Revenue.Curves, aes(x = Q)) +
  geom_line(aes(y = TR, color = "TR"), linewidth = 1.1) +
  geom_point(aes(y = TR, color = "TR")) +
  
  geom_line(aes(y = TC, color = "TC"), linewidth = 1.1) +
  geom_point(aes(y = TC, color = "TC")) +
  
  geom_line(aes(y = PROFIT, color = "PROFIT"), linewidth = 1.1) +
  geom_point(aes(y = PROFIT, color = "PROFIT")) +
  
  geom_line(aes(y = MR, color = "MR"), linewidth = 1.1) +
  geom_point(aes(y = MR, color = "MR")) +
  
  geom_line(aes(y = MC, color = "MC"), linewidth = 1.1) +
  geom_point(aes(y = MC, color = "MC")) +
  
  geom_line(aes(y = CHANGE.IN.PROFIT, color = "CHANGE.IN.PROFIT"), linewidth = 1.1) +
  geom_point(aes(y = CHANGE.IN.PROFIT, color = "CHANGE.IN.PROFIT")) +
  
  labs(title = "Cost and Revenue Curves",
       y = "Cost",
       color = "Type")
