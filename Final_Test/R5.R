# Đầu tiên ta mô phỏng cho phân phối của trung bình mẫu X
# Đối với mẫu ngẫu nhiên lấy từ phân phối chuẩn, ta thành lập mẫu ngẫu nhiên kích thước n xem hàm rnorm(n,mu,sigma)

mu = 2
sigma = 2
Y = function() rnorm(1, mu, sigma)
Y()
vecY = function(n) replicate(n, Y())
n=4
vecY(n)

# Va ta co phan phoi trung binh mau ngau nhien kich thuoc n nhu sau
MeanY = function() mean(vecY(n))
MeanY()

SampleMeanY = function(n) replicate(n, MeanY())
x = SampleMeanY(1000)
x
hist(x, freq = 0, breaks = 40)
curve(dnorm(x, mu, sigma/sqrt(n)), col="blue", lty=1, lwd=2, add=T)





