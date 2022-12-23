setwd("D:/D Data/code/R/Final_Test")
load("scores.rda")
scores
alpha = 0.05
var.equal = var.test(scores$midterm, scores$final)
var.equal

# Because var.equal$p.value < alpha ==> var is not equal
result = t.test(scores$midterm, scores$final, var.equal = F)
kl = ifelse(result$p.value < alpha, "Bac bo H0", "Khong du du kien bac bo H0")
print(kl)
