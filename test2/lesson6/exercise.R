#Cau 3
sv <-1:10
ques1 <- c(3,3,3,4,3,4,3,4,3,4)
ques2 <- c(5,3,5,5,2,2,5,5,4,2)
ques3 <- c(1,3,1,1,1,3,1,1,1,1)

#Neu nhap tu ban phim, dung lenh scan(), ket thuc nhap bang phim Ctrl + Z
?table
tab1 <- table(ques1)
tab1
tab2 <- table(ques2)
tab2
tab3 <- table(ques3)
tab3
barplot(tab1)
barplot(tab2)
barplot(tab3)


barplot(tab2, horiz=T)
barplot(tab3, horiz=T)
frame <- edit(data.frame()) 
frame
frame$ques1
frame$ques2
frame$ques3
#----------------------------------------------------

#Cau 4
#Tao 100 gia tri co phan phoi nhi thuc B(60, 0.4)
?rbinom
x = rbinom(100, 60, 0.4)
x
hist(x, main='Mo phong phan phoi nhi thuc')

#Tao ngau nhien 100 gia tri co phan phoi Poisson voi lambda=4
y <- rpois(100,4);y
hist(y)
#Ve bieu do mo ta mat do xac suat
plot(y,dpois(y,4),type='h',lwd=5,col="red")

#Tao ngau nhien 100 gia tri co phan phoi chuan moi trung binh 
#bang 50 va do lech tieu chuan 4
z <- rnorm(100,50,4);z
plot(density(z),main='Bieu do ham mat do')
#hoac
plot(z,dnorm(z,50,4),type='h',col="blue")


#Tao ngau nhien 100 gia tri co phan phoi mu voi lambda=1/2500
t <- rexp(100,1/2500);t
plot(density(t),main='Bieu do ham mat do') #Mat do tu so lieu tao
#hoac
plot(t,dexp(t,1/2500),type='h',main='Bieu do ham mat do cua pp mu')


#Bai 5
diesel.engine = read.table('diesel_engine.dat',header=T)
diesel.time = read.csv(file.choose(), header=T)
attach(diesel.engine)
attach(diesel.time)
names(diesel.engine);names(diesel.time)
#Xac dinh so bien khuyet trong bien speed va thay doi gia tri
length(speed[speed=='NA'])
speed[is.na(speed)==T] = 1500
#Xac dinh so bien khuyet trong bien load va thay doi gia tri
length(load[load=='NA'])
length(diesel.engine$load[diesel.engine$load=='NA'])
diesel.engine$load[is.na(diesel.engine$load)==T]=20
speed;load
load[is.na(load)==T]=20
#Tinh trung binh, phuong sai, do lech chuan cua bien alcohol
alcohol
mean(alcohol);var(alcohol);sd(alcohol);min(diesel.engine$alcohol);max(diesel.engine$alcohol)
#Ghep hai dataframe diesel.engine va diesel.time thanh 1
diesel = data.frame(diesel.engine,diesel.time)
diesel
#Trich gia tri cua bien run ma co delay < 1.000
run[delay<1.000]
#Dem so dong co co timing = 30
length(run[timing==30])
length(diesel.engine$run[diesel.time$timing==30])
#Ve bieu do boxplot cho cac bien speed, timing, delay
boxplot(speed,timing,delay) #Nhan xet do thi
par(mfrow = c(2,2))
boxplot(speed)
boxplot(timing)
boxplot(delay)
#Ve bieu do phan tan cho cac cap (timing,speed) va (temp,press)
plot(timing,speed)
plot(temp,press)
#Chuyen bien load sang bien nhan to
diesel.engine$load = factor(diesel.engine$load)
diesel.engine$load
#Chia bien delay thanh 4 doan deu nhau
delay
new.delay = cut(delay,breaks=4)
new.delay
#So gia tri trong tung khoang
tab = table(new.delay)
tab
barplot(tab[])
#Chia bien delay thanh cac doan: (0.283,0.7],(0.7,0.95],(0.95,1.2],(1.2,1.56]
cut.points = c(0.283,0.7,0.95,1.2,1.56)
new.delay1 = cut(delay,breaks=cut.points)
new.delay1
#So gia tri trong tung khoang
tab1 = table(new.delay1)
tab1
barplot(tab1[])
