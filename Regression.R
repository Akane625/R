# Example 1 (Simple Linear Regression)

plot(HGBMCV$MCV, HGBMCV$HGB, xlab = "MCV (FL)", ylab = "HGB (g/dL)")
cor.test(HGBMCV$MCV, HGBMCV$HGB, method=c("pearson"))
regress <- lm(HGB~MCV, HGBMCV)
abline(a=coef(regress)[1], b=coef(regress)[2])
summary(regress)




# Example 1 (Multiple Linear Regression)
bloodleadreg <- lm(LEAD~NumRadiators + FBS + Creatinine + BUN + Protein + eGFR + YrsEmployd, BloodLead)
summary(bloodleadreg)


# Example 2
summary(lm(CancerAntigen~Neutrophils + Lymphocytes + RDW, ColonCancer))





