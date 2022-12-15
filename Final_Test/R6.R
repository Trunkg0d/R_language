# Exercise
# Ex1
x = c(1,2,5,7,-3,0,5,1,5,6)
y = c(2,2,0,-5,7,8,11,9,3,2)
x+y
x*y
x-y
z = x[x%%2==0]; z
t = y[y%%2 != 0]; t
xp = x[x>0]; xp
yp = y[y>0]; yp

# Tinh trung binh cua x va y
mean(x)
mean(y)

# Tinh do lech chuan standard deviation cua x va y
sd(x)
sd(y)

# Tinh sai so mau standard error
std.error = function(x) {
  sd(x)/sqrt(length(x))
}
std.error(x)
std.error(y)

# Tim phan tu lon nhat, be nhat cua x va y
min(x)
max(x)
min(y)
max(y)

# Sort 
# sort(x, decreasing = F)
sort(x)
sort(x, decreasing = T)
sort(y)
sort(y, decreasing = T)

# Ex2
setwd("D:/D Data/code/R/Final_Test")
df = read.csv("data01.csv", header = T)
df
# Tinh trung binh, phuong sai, trung vi cua FPSA va TPSA
mean(df$FPSA)
var(df$FPSA)
median(df$FPSA)

mean(df$TPSA)
var(df$TPSA)
median(df$TPSA)

# Ve bieu do dang duong, boxplot cho FPSA va TPSA
plot(df$FPSA, type="l")
plot(df$TPSA, type="l")

boxplot(df$FPSA)
boxplot(df$TPSA)

df2 = read.csv("data02.csv", header = T)
df2

z <- merge(df, df2, by="K")
z


# Ex3
ques1 = c(3,3,3,4,3,4,3,4,3,4)
ques2 = c(5,3,5,5,2,2,5,5,4,2)
ques3 = c(1,3,1,1,1,3,1,1,1,1)
df = data.frame(ques1, ques2, ques3)
df
tab1 = table(ques1)
tab1
tab2 = table(ques2)
tab2
tab3 = table(ques3)
tab3

barplot(tab1)
barplot(tab2)
barplot(tab3)

barplot(tab3, horiz = T)
barplot(tab2, horiz = T)

# Ex4
# Tao 100 gia tri co phan phoi nhi thuc, voi n = 60 va xac suat thanh cong 
# moi lan la 0.4, ve bieu do to chuc tan so
x = rbinom(100, 60, 0.4)
x
hist(x, main="Mo phong phan phoi nhi thuc")

# Tao ngau nhien 100 gia tri co phan phoi Poisson voi lambda=4, ve bieu do
# to chuc tan so
y = rpois(100,4)
y
hist(y, main = "Mo phong phan phoi poisson")

# Tao ngau nhien 100 gia tri co phan phoi chuan X~N(50, 4), ve ham phan phoi
# ham mat do

z = rnorm(100, 50, 4)
z
plot(density(z), main = 'Bieu do ham mat do')
# or
plot(z,dnorm(z,50,4),type='h',col="blue")

# Tao ngau nhien 100 gia tri co phan phoi mu voi lambda = 1/25, ve ham phan 
# phoi, ham mat do

t = rexp(100, 1/25)
t
plot(density(t), main = "Bieu do ham mat do")
# or
plot(t,dexp(t,1/25),type='h',main='Bieu do ham mat do cua pp mu')

# Ex 5
diesel_engine = read.table("diesel_engine.dat", header = T)
diesel_engine

diesel_time = read.csv("diesel_time.csv", header =T)
diesel_time

names(diesel_engine)
names(diesel_time)

length(diesel_engine[is.na(diesel_engine)])
diesel_engine$speed[is.na(diesel_engine$speed)] = 1500
diesel_engine$load[is.na(diesel_engine$load)] = 20
# Check again
length(diesel_engine[is.na(diesel_engine$speed),]$speed)
length(diesel_engine[is.na(diesel_engine$load),]$load)
length(diesel_engine[is.na(diesel_engine)])

# Trung binh, phuong sai, do lech chuan, max, min of alcohol in diesel_engine
mean(diesel_engine$alcohol)
var(diesel_engine$alcohol)
sd(diesel_engine$alcohol)
max(diesel_engine$alcohol)
min(diesel_engine$alcohol)

diesel = data.frame(diesel_engine, diesel_time)
diesel
diesel[diesel$delay < 1.000, ]$run

length(diesel[diesel$timing == 30, ])

# Ve bieu do boxplot cho speed, timing va delay
boxplot(diesel$speed, diesel$timing, diesel$delay)
par(mfrow = c(2,2))
boxplot(diesel$speed)
boxplot(diesel$timing)
boxplot(diesel$delay)

# Ve bieu do phan tan cho cac cap bien (timing, speed), (temp, press)
par(mfrow=c(1,1)) # reset par
plot(diesel$timing, diesel$speed)
plot(diesel$temp,diesel$press)

#Chuyen bien load sang bien nhan to
diesel_engine$load = factor(diesel_engine$load)
diesel_engine$load

# Chia bien delay thanh 4 doan deu nhau
diesel$delay
new.delay = cut(diesel$delay,breaks=4)
new.delay

# So gia tri trong tung khoang
tab = table(new.delay)
tab
barplot(tab)

# Chia bien delay thanh cac doan: (0.283,0.7],(0.7,0.95],(0.95,1.2],(1.2,1.56]
cut.points = c(0.283, 0.7, 0.95, 1.2, 1.56)
new.delay1 = cut(diesel$delay, cut.points)
new.delay1
tab1 = table(new.delay1)
tab1
barplot(tab1)

# Ex6
year = c(1970:1979)
year
snow.cover = c(6.5, 12.0, 14.9, 10.0, 10.7, 7.9, 21.9, 12.5, 14.5, 9.2)
snow.cover

plot(snow.cover~year, type="l")
hist(snow.cover)

new.snow.cover = log(snow.cover)
new.snow.cover

plot(new.snow.cover~year, type="l")
hist(new.snow.cover)



