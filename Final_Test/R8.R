setwd("D:/D Data/code/R/Final_Test")

# Kiem dinh gia thuyet cho ky vong
load('heights.rda')
summary(heights)
hist(heights)
result = t.test(heights, mu=160, conf.level = 0.95)
result

names(result)
result$statistic
result$parameter
result$p.value
result$conf.int
result$estimate
result$null.value
result$alternative
result$method
result$data.name

# Kiem dinh gia thuyet cho ty le
n = 800
y = 448
result = prop.test(y, n, p=0.5, alternative = "greater", conf.level = 0.99)
result
names(result)

result$statistic
result$parameter
result$p.value
result$estimate
result$null.value
result$conf.int
result$alternative
result$method
result$data.name

# Exercise
# Ex3
data = read.table("teen-birth-rate-2002.txt", header = T,sep='\t')
data
newdat<-data.frame(Black=data$Black,Hispanic=data$Hispanic, White=data$White)
newdat

#Tinh cac gia tri trong bang
# apply(data, 2, function) with 2 is apply for column, 1 is apply for row
Xbar <- apply(newdat,2,function(x) mean(x,na.rm=T))
Xbar

Sbar = apply(newdat, 2, function(x) sd(x, na.rm = T))
Sbar

Nbar = apply(newdat, 2, function(x) length(x[is.na(x) == F]))
Nbar

mu0 = mean(c(newdat$Black, newdat$White, newdat$Hispanic), na.rm = T)
mu0

z = function(x, mu0){
  s = sd(x, na.rm = T)
  mean = mean(x, na.rm = T)
  n = length(x[is.na(x) == F])
  z = (mean - mu0)*sqrt(n)/s
  return(z)
}

Zbar = apply(newdat, 2, function(x) z(x, mu0))
Zbar
p <- apply(newdat,2,function(x) 2*(1-pnorm(abs(z.val(x,mu0)))))
p

table = round(data.frame(Xbar, Sbar, Nbar, Zbar, p))
table

# Ex4
load('data04.rda')
survey
f = sum(survey)
f
n = 80
p.hat = f/n
p.hat
p0 = 0.6
alpha = 0.05
z = (p.hat - p0) * sqrt(n) / sqrt(p0 * (1-p0))
z
p.value = 1 - pnorm(z)
p.value

kl = ifelse(p.value < alpha, ' Bac bo H0', 'Chua du co so de bac bo H0')
print(kl)

# Ex6
#a
data = read.csv("times.csv", header = T)
data
y = length(data[data$KHTN > 5,]$KHTN); y
n = length(data$KHTN); n
prop.test(y, n, p=0.5, alternative="less", conf.level = 0.05)

#b
proptest.geq = function(f, n, p0, alpha){
  p_hat = f/n
  z = (p_hat - p0)*sqrt(n)/sqrt(p0*(1-p0))
  p.value = 1-pnorm(z)
  kl = ifelse(p.value < alpha, ' Bac bo H0: Greater than 50%', 'Chua du co so de bac bo H0: Not greater than 50%')
  print(kl)
}

proptest.geq(y,n,0.5,0.05)

#c
proptest.leq = function(f, n, p0, alpha){
  p_hat = y/n
  z = (p_hat - p0)*sqrt(n)/sqrt(p0*(1-p0))
  p.value = pnorm(z)
  kl = ifelse(p.value < alpha, 'Bac bo H0', 'Chua du co so de bac bo H0')
  print(kl)
}
proptest.leq(y, n, 0.5, 0.05)
