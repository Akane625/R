# get sd, mean, etc. aggregate(num ~ factor, mean/sd/var/length, data=dataset)
# bartlett.test(num ~ factor, data=dataset)
# aov() fisher's anova add summary() to get pvalue as well (equal variances)
# if anova rejected perform post hoc change summary with TukeyHSD

# install.packages("onewaytests")
# library(onewaytests)
# welch.test() (not equal variances)
# post hoc is games-howell posthoc.tgh() use dollar sign method instead of ~

# repeated measures (1 group measured multiple times)
# summary(aov(num ~ factor+Error(factor(ID)), data=dataset))
# pairwise.t.test($, $, paired=TRUE) holm's p-value adjustment

str(carpressure)
aggregate(pressure ~ car, mean, data=carpressure)
aggregate(pressure ~ car, sd, data=carpressure)
aggregate(pressure ~ car, length, data=carpressure)
bartlett.test(pressure ~ car, data=carpressure)
summary(aov(pressure ~ car, data=carpressure))
TukeyHSD(aov(pressure ~ car, data=carpressure))
# midsize = fullsize


qtukey(p=0.95, 4, 35)
# 3.814


str(neopterin)
aggregate(neopterin ~ time, data=neopterin, mean)
aggregate(neopterin ~ time, data=neopterin, sd)
aggregate(neopterin ~ time, data=neopterin, length)
summary(aov(neopterin ~ time+Error(factor(ID)), data=neopterin))
pairwise.t.test(neopterin$neopterin, neopterin$time, paired=TRUE)


pf(0.791, 3, 12)
# 0.478












