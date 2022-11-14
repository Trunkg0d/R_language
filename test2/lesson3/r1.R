k = 0:8
p = function(k){
    choose(8, k)*0.3^k*0.7^(8-k)
}
p(k)

sum(p(k))

f = function(x, mu = 0, sigma = 1){
    1/sqrt(2*pi*sigma^2) * exp(-(x-mu)^2/(2*sigma^2))
}
f(0)

#check
integrate(function(x) f(x,0,1), lower = -Inf, upper = Inf)$value
?plot
plot(k, p(k), type="h", ylab="P(X=x)")

?curve
curve(f(x,0,1), from=-3, to=3, ylab = "fX(x)")

F = function(k){
    sum(p(0:k))
}
F = Vectorize(F)
F(4)

?integrate

f = function(x, mu = 0, sigma = 1){
    1/sqrt(2*pi*sigma^2) * exp(-(x-mu)^2/(2*sigma^2))
}

F2 = function(a){
    integrate(function(x) f(x,0,1), lower = -Inf, upper =a)$value
}
F2 = Vectorize(F2)
F2(1.96)

plot(stepfun(k, c(0,f(k))), ylab = "FX(x)", main="" )

curve(F(x), from=-3, to=3, ylab = "FX(x)")

################################################################
# PHAN VI
f = function(k){
    sum(p(0:k))
}
f=Vectorize(f)
K = k[f(k) >= 0.25]
K[1]

f(0)
f(1)

?uniroot
uniroot(function(x) F2(x) - 0.975, c(-3,3))$root

#####################################################
# MO PHONG
x = 1:7
sample(x)

x = 1:3
sample(x, size = 2, replace=TRUE, prob = c(0.25, 0.2, 0.55))
