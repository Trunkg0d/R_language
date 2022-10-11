#Tạo hàm x: f(x) = 8Ck * 0.3^x * 0.7^(8-x)
f = function(x) choose(8,x) * 0.3^x * 0.7^(8-x)

x=0:8
f(x)

#Kiểm tra tổng các xác suất:
sum(f(x))

#Tạo hàm f khác
f = function(x, mu = 0, sigma = 1) 1/sqrt(2*pi*sigma^2) * exp(-(x-mu)^2/(2*sigma^2))
#Tính tích phân và kiểm tra kết quả có bằng 1 hay không
integrate(function(x) f(x,0,1), lower = -Inf, upper = Inf)
f(0,0,1) #or f(0) because default of sigma and mu is 0 and 1

#   a) Xét f(x) = 8Ck * 0.3^x * 0.7^(8-x)
f = function(x) choose(8,x) * 0.3^x * 0.7^(8-x)
#Tính Fx(4) = P(X<=4) = P(0) + ... + P(4)
F = function(k) sum(f(0:k)) 
F = Vectorize(F)
F(4)

#   b) Xét f(x) bên dưới:
f = function(x, mu = 0, sigma = 1) 1/sqrt(2*pi*sigma^2) * exp(-(x-mu)^2/(2*sigma^2))
F = function(a, mu = 0, sigma = 1){
    integrate(function(x) f(x,mu,sigma), lower = -Inf, upper = a)$value
}
F = Vectorize(F)
F(1.96)
