#Mật độ
help("dbinom")

dbinom(x, size, prob, log = FALSE)
pbinom(q, size, prob, lower.tail = TRUE, log.p = FALSE)
qbinom(p, size, prob, lower.tail = TRUE, log.p = FALSE)
rbinom(n, size, prob)

dbinom(4,8,0.3)
#Check again:
choose(8,4)*0.3^4*(1-0.3)^(8-4)

#Plot
plot(0:8,dbinom(0:8, 8, 0.3), type = "h", ylab = "P(X = x)")

###################################################################

#Normal distribution
help("dnorm")

dnorm(x, mean = 0, sd = 1, log = FALSE)
pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
rnorm(n, mean = 0, sd = 1)

dnorm(1.7, 2, 0.12)

#Check again:
(1/sqrt(2*pi*0.12^2))*exp(-(1.7-2)^2/(2*0.12^2))

#Plot
curve(dnorm(x,2,0.12),from=1.5,to=2.5,ylab = "fX(x)")

#Ví dụ: 
# a) Tính giá trị mật độ của X~B(8, 0.3) tại x e {4, 6}
dbinom(c(4, 6), 8, 0.3)
# b) Tính giá trị mật độ của X~E(lambda) tại x=2 và lambda = 1, lambda = 2, và lambda = 3.
help("dexp")
dexp(2, c(1,2,3))
###############################################################

#HÀM PHÂN PHỐI
# a) Tính FX(4) = P(X<=4) = sum P(X=k) với k = {0..4}
pbinom(4, 8, 0.3)
# Check again
sum(dbinom(0:4, 8, 0.3))

#Phân vị của phân phối nhị thức
#Phân vị 0.25 của X~B(8, 0.3)
qbinom(0.25, 8, 0.3)

#Ta có thể kiểm tra lại bằng cách tính các giá trị  FX(x) tại x thuộc {0,1..8}
pbinom(0:8, 8, 0.3)
#Ta thấy rằng fX(1) = 0.25529833 > 0.25 và là số nhỏ nhất nên x_0.25 = 1

#Phân vị 0.975 của normal distribution X~N(2, 0.12^2)
qnorm(0.975, 2, 0.12)

#Check lại bằng lệnh
pnorm(2.235196, 2, 0.12)

################################################################

#MÔ PHỎNG CÁC LỆNH ĐƯỢC LẬP TRÌNH SẴN
# a) Mô phỏng ngẫu nhiên cỡ 10 của phân phối poission P(2)
rpois(10,2)

# b) Mô phỏng giá trị ngẫu nhiên của biến sum(Xi, i chạy từ 1->80), với X~B(1, 0.02)
help("rbinom")
a<-rbinom(80, 1, 0.02)
a
sum(a)

# c) Mô phỏng một ngẫu nhiên cỡ 15 của phân phối N(2, 0.12^2)
help("rnorm")
rnorm(15, 2, 0.12)
