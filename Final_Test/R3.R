#a Voi k = 0,1,...8, tinh cac xac suat P(X=k)=8Ck*0.3^k*0.7^(8-k)
k=0:8
k
p = function(k){
  choose(8,k)*0.3^k*0.7^(8-k)
}
p(k)

sum(p(k)) # Check sum equal 1

#b
f = function(x, mu = 0, sigma = 1){
  1/sqrt(2*pi*sigma^2) * exp(-(x - mu)^2 / (2*sigma^2))
}

# Check voi tich phan xem co bang 1 hay khong
integrate(function(x) f(x,0,1), lower = -Inf, upper = Inf)

################################################################################################
# Bieu dien bang do thi
plot(k, p(k), type='h', ylab="P(X=x)")

curve(f(x,0,1),from=-3, to=3,ylab="fX(x)")

################################################################################################
# Hàm phân phối
#a
F = function(k){
  sum(p(0:k))
}
F = Vectorize(F)
F(4)

F2 = function(k){
  integrate(function(x) f(x, 0, 1), lower=-Inf, upper=k)
}$value
F2 = Vectorize(F2)
F2(1.96)

# Ve do thi ham phan phoi xac suat
plot(stepfun(k, c(0, F(k))), ylab="FX(x)", main="")

curve(F2(x), from=-3, to=3,ylab="FX(x)")

# Phân vị
K=k[F(k) >= 0.25]
K[1]

uniroot(function(x) F2(x)-0.975, c(-3,3))$root

# Mo phong
x = 1:7
sample(x)
sample(x, replace = T)


# Exercises
# Ex1
f = function(p){
  0.07*p**(-0.93)
}
integrate(f, lower=0, upper=0.2)$value

# Ex2
x=sample(1:5,100,TRUE,c(0.1,0.2,0.4,0.2,0.1))
x
table(x)/100
plot(table(x)/100)
barplot(table(x)/100)
