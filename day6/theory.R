# câu 1 ----------
setwd("D:/D Data/code/R/day6")
data = read.csv("profit.csv")
attach(data)
names(data)

#Ve do thi cua du lieu
hist(data$profit)
high.profit = profit[profit > 65]
KTC.trungbinh<-function(x, alpha){
  x.mean = mean(x)
  x.sd = sd(x)
  n <- length(x)  
  epsilon = qnorm(1-alpha/2)*x.sd/sqrt(n)
  mu.lower = x.mean - epsilon
  mu.upper = x.mean + epsilon
  cat('Khoang tin cay 99% cho ky vong mu la:\n')
  cat('[',mu.lower,';',mu.upper,']\n')
}
KTC.trungbinh(high.profit,0.01)

#(c)
alpha<-0.01
t<-t.test(profit, alternative = "two.sided", 
          mu = 60, conf.level = 0.99)
ifelse(t$p.value<alpha, 'Bac bo Ho', 
       'Chua du co so de bac bo Ho')
