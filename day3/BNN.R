#a
#Với k = 0,1,..8. Tính các xác suất P(X=k) = 8Ck * 0.3^k * 0.7^(8-k)
k=0:8
k
p<-function(k){
    choose(8,k)*0.3^k*0.7^(8-k)
}
p(k)

#Ta có thể kiểm tra lại rằng tổng các xác suất bằng 1 với lệnh:
sum(p(k))

#b
#Hàm mật độ xác suất: f(x) = [1/sqrt(2*pi*sigma^2)]*[e^(-(x-mu)^2/(2*sigma^2))], -inf < x < inf
#với mu và sigma>0 là 2 tham số. Viết hàm pdf của X để tính giá trị f(x) tại một điểm bất kỳ.
f = function(x, mu=0, sigma=1){
    1/sqrt(2*pi*sigma^2) * exp(-(x-mu)^2/(2*sigma^2))
}

#Kiểm tra tích phân có bằng 1
integrate(function(x) f(x,0,1), lower=-Inf, upper=Inf)

#########################
#BIỂU DIỄN BẰNG ĐỒ THỊ
#a) Vẽ đồ thị hàm xác suất trong ví dụ 1a) 
plot(k, p(k), type = "h", ylab = "P(X=x)", col="pink", lw)

#plot type:
# p	    Points plot (default)
# l	    Line plot
# b	    Both (points and line)
# o	    Both (overplotted)
# s	    Stairs plot
# h	    Histogram-like plot
# n	    No plotting

#b) Vẽ đồ thị hàm xác suất trong ví dụ 1b)
curve(f(x,0,1), from=-3, to=3, ylab="fX(x)")

#########################
#HÀM PHÂN PHỐI
F = function(k) sum(p(0:k))
F = Vectorize(F)
F(4)
F2 = function(a, mu=0,sigma=1){
    integrate(function(x) f(x,mu,sigma),lower = -Inf, upper = a)$value
}
F2 = Vectorize(F2)
F2(1.96)


