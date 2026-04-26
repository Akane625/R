hte <- Nephrolithotomy[Nephrolithotomy$Sex == "Male" & Nephrolithotomy$GuyStoneScore == "Grade 2",]
tnw <- hte$StoneSurfaceArea
median(tnw)


mean(Nephrolithotomy$BMI)

tev <- Nephrolithotomy[Nephrolithotomy$Diabetes == "Present" & Nephrolithotomy$GuyStoneScore == "Grade 4",]
jya <- tev$HGBTotalLoss
var(jya)


myr <- Nephrolithotomy[Nephrolithotomy$PTB == "Present" & Nephrolithotomy$SeverityNeph == "Moderate",]
jry <- myr$HGBTotalLoss
quantile(jry, probs = c(0.63), type = 6)


aggregate(ORTime ~ MethodOfTractDilation, Nephrolithotomy, FUN = 'quantile', probs = c(0.47), type = 6)


aggregate(HGBTotalLoss ~ PTB, Nephrolithotomy, FUN = 'quantile', probs = c(0.75), type = 6)


median(Nephrolithotomy$BMI)


aggregate(ORTime ~ SeverityNeph, Nephrolithotomy, median)











