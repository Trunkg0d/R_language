# Mat do: dluat
# Gia tri ham phan phoi: pluat
# Gia tri phan vi: qluat
# Mo phong gia tri cua X: rluat

# Mat do
# Vd1 a) 
# dbinom(x, size, prob) with X~B(size, prob)
dbinom(4, 8, 0.3)

# Check again
choose(8,4) * 0.3^4 * (1-0.3)^4

# Vd1 b)
# dnorm(x, mean, sd) with X~N(mean, sd^2)
dnorm(1.7, 2, 0.12)

# Vd2 Tinh mat do tai nhieu gia tri, t nhap vao vector cac gia tri
# X ~ B(8, 0.3) with x={4,6}
x = c(4,6)
dbinom(x, 8, 0.3)

# X ~ E(lambda}, with lambda = {1,2,3}
x = 2
lambda = c(1,2,3)
# dexp(x, lambda)
dexp(2,lambda)

# Bieu dien bang do thi cua ham mat do xac suat
# Vd ve ham mat do xac suat trong vd B(8, 0.3)
plot(0:8, dbinom(0:8,8,0.3), type="h", ylab="P(X=x)")

# Vd ve ham mat do xac suat trong vd N(2, 0.12^2)
curve(dnorm(x, 2, 0.12), from=1.5, to=2.5, ylab="fX(x)")

#################################################################
# HAM PHAN PHOI
# Xet tiep vi du a, tinh FX(4) = P(X<=4) voi X~B(8, 0.3)
pbinom(4, 8, 0.3)

# Check again
sum(dbinom(0:4, 8, 0.3))

# Xet tiep vi du b, tinh FX(2.1) = P(X<=2.1) voi X~N(2, 0.12^2)
pnorm(2.1, 2, 0.12)

# Tinh P(X>2), X~E(3)
1-pexp(2, 3)
# or
pexp(2, 3, lower.tail = F)

# Bieu dien bang do thi cua ham phan phoi
# Bien ngau nhien roi rac => stepfun
# Bien ngau nhien lien tuc => curve

# Vd a, ve ham phan phoi xac suat cua x
plot(stepfun(0:8, c(0, pbinom(0:8, 8, 0.3))), ylab="FX(x)", main="")

# Vd b
curve(pnorm(x, 2, 0.12), from=1.5, to=2.5, ylab="FX(x)")

#################################################################
# PHAN VI
# Vd a, tinh phan vi muc 0.25 cua X~B(8, 0.3)
qbinom(0.25, 8, 0.3)

# Vd b, tinh phan vi muc 0.975 cua X~N(2, 0.12)
qnorm(0.975, 2, 0.12)


#################################################################
# Mo phong cac phan phoi duoc lap trinh san
# Mo phong mot mau ngau nhien co 10 cua phan phoi poisson P(2)

# dpois(x, lambda, log = FALSE)
# ppois(q, lambda, lower.tail = TRUE, log.p = FALSE)
# qpois(p, lambda, lower.tail = TRUE, log.p = FALSE)
# rpois(n, lambda)
rpois(10, 2)

# Vd 7b)
sum(rbinom(1, 80, 0.02))

# Mo phong mot mau ngau nhien co 15 cua phan phoi N(2, 0.12^2)
rnorm(15, 2, 0.12)

# EXERCISE




