setwd("D:/D Data/code/R/Final_Test")
# Ex1
x = rnorm(35, 10, 5)
x
alpha = 1-0.95;alpha
x.sd = sd(x); x.sd
x.bar = mean(x); x.bar
epsilon = qnorm(1-alpha/2)*x.sd/sqrt(35)
epsilon
mu.lower = x.bar - epsilon
mu.upper = x.bar + epsilon
cat(mu.lower, ' ', mu.upper, '\n')

# Ex2
df = read.csv("data31.csv", header = T)
df
ci.mean = function(x, alpha){
  x.sd = sd(x)
  x.mean = mean(x)
  epsilon = qnorm(1-alpha/2)*x.sd/sqrt(length(x))
  cat('Epsilon is ', epsilon, '\n')
  cat(x.mean - epsilon, ' ', x.mean + epsilon, '\n')
}
ci.mean(df$profit, 0.05)
ci.mean(df$profit, 0.01)

# Ex3
df = read.csv("data32.csv", header = T)
df
ci.mean(df$KHTN, 0.05)

ci.prob = function(f, n, alpha){
  p_prob = f/n
  epsilon = qnorm(1-alpha/2)*sqrt(p_prob*(1-p_prob)/n)
  cat('Epsilon: ', epsilon, '\n')
  cat(p_prob - epsilon,' ',p_prob + epsilon,'\n')
}
f = length(df[df$KHTN > 5,]$KHTN)
f
n = 120
ci.prob(f, n, 0.1)
ci.prob(f, n, 0.05)
ci.prob(f, n, 0.01)


# Ex5
ktc.tb = function(tbm, sigma = -1, s = -1, n, alpha){
  if(sigma > -1){
    epsilon = qnorm(1-alpha/2) * sigma/sqrt(n)
  } else {
    if(n > 30){
      epsilon = qnorm(1-alpha/2) * s/sqrt(n)
    } else {
      epsilon = qt(1-alpha/2, n-1) * s/sqrt(n)
    }
  }
  cat(tbm-epsilon,' ', tbm+epsilon,'\n')
}
