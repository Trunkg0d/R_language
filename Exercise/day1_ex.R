#Bai 1:
x <-c(4,2,6)
y <-c(1,0,-1)
length(x)
sum(x)
sum(x^2)
x+y
x*y
x-2
x^2

#Bai 2:
7:11
seq(1,9)
seq(4,10,by=2)
seq(3,30,length=10)
seq(6,-4, by=-2)

#Bai 3:
rep(2,4)
rep(c(1,2),4)
rep(c(1,2),c(4,4))
rep(1:4,4)
rep(1:4,rep(3,4))

#Bai 4:
rep(6,6)
rep(c(5,8),4)
rep(c(5,8),c(4,4))

#Bai 5:
x<-c(5,9,2,3,4,6,7,0,8,12,2,9)
x[2]
x[2:4]
x[c(2,3,6)]
x[c(1:5,10:12)]
x[-(10:12)] #Lay phan bu voi (10:12)

#Bai 6
y<-c(33,44,29,16,25,45,33,19,54,22,21,49,11,24,56)
summary(y)

#Bai 7
x=matrix(c(3,-1,2,1), nrow = 2, ncol = 2)
x
y<-c