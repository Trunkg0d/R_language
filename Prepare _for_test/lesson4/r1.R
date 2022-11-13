#Vd1
#a)
dbinom(4,8,0.3)
#Check again
choose(8,4)*0.3^4 *0.7^4

#b) X ~ N(2, 0.12 ^ 2)
?dnorm
dnorm(1.7, 2, 0.12)

#Vd2)
#a)
x = c(4,6)
dbinom(x, 8, 0.3)

#b)
?dexp
lambda = c(1:3)
lambda
dexp(2, lambda)

# BIEU DIEN BANG DO THI
#a
plot(0:8, dbinom(0:8,8, 0.3), type = "h", ylab = "P(X=x)")
#b
curve(dnorm(x, 2, 0.12), from=1.5, to=2.5, ylab="fX(x)")

##############################################
# HAM PHAN PHOI
#Vd4)
#a)
?pbinom
pbinom(4, 8, 0.3)
sum(dbinom(0:4,8,0.3))
#b)
pnorm(2.1, 2, 0.12)
#c)
pexp(2,3,lower.tail = FALSE)

##############################################
# PHAN VI
#Vd6)
#a)
qbinom(0.25, 8, 0.3)
#b)
qnorm(0.975, 2, 0.12)

##############################################
# MO PHONG CAC PHAN PHOI DUOC LAP TRINH SAN
#Vd7)
#a) Mo phong mot mau ngau nhien size 10 cua phan phoi  Poisson P(2)
rpois(10,2)
#b)
rbinom(1, 80, 0.02)
#c) Mo phong mot mau size 15 cua pp chuan N(2, 0.12^2)
rnorm(15, 2, 0.12)



