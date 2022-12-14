x = seq(1,5, by = 0.5)
x
x[length(x)]

#############################################################################
# Factor
f = factor(c("yes", "no", "yes", "maybe", "maybe", "no", "maybe", "no", "no"))
f

f1 = factor(c("yes", "no", "yes", "maybe", "maybe", "no", "maybe", "no", "no"), ordered = T)
f1

as.ordered(f)

#############################################################################
# Matrix
# Create1
matrix(data = NA, nrow = 5, ncol = 5, byrow = T)

# Create2
matrix(data = 1:15, nrow = 5, ncol = 5, byrow = T)

# Ket hop 2 vector
v1 = 1:5
v2 = 5:1

# Ket hop theo cot
cb = cbind(v1, v2)
cb

# Ket hop theo hang
rb = rbind(v1, v2)
rb

X = matrix(data=1:15, nrow = 5, ncol = 5, byrow = T)
X
dim(X)
nrow(X)
ncol(X)

# Chuyen vi mot ma tran
t(X)

#############################################################################
# Array
x = array(c(T, F), dim=c(1)) # Array one dimension with one element
x
y = array(c(T, F), dim=c(2)) # Array two dimension with two elements
y
z = array(1:27, dim=c(3,3,3)) # Array three dimension with three elements each dimension.
z
# Get elements
z[,,3]
z[,3,3]
z[3,3,3]
z[3,,3]
z[3,3,]
z[,c(2,3),c(2,3)]


#############################################################################
# List
x = c(1:4)
y = FALSE
z = matrix(c(1:4), nrow = 2, ncol = 2)
mylist = list(x, y, z)
mylist
mylist[1]
mylist[3]

a = list()
a[1] = 'A'
a
a[2] = 'B'
a

#############################################################################
# Data Frame
v1 = 1:5
v2 = c(T,F,T,F,T)
df = data.frame(v1, v2)
df
df[, 1]
df[1, ]

# Create data frame directly
df = data.frame(foo = 1:5, bar = c(T,F,T,T,F))
df

#############################################################################
# Exercises
# Ex1
x = c(4,2,6)
y = c(1, 0, -1)

length(x)
sum(x)
sum(x^2)
x+y
x*y
x-2
x^2

# Ex2
7:11
seq(2,9)
seq(4,10,by=2)
seq(3,30, length=10)
seq(6,-4,by=-2)

# Ex3
rep(2,4)
rep(c(1,2),4)
rep(c(1,2),c(4,4))
rep(1:4,4)
rep(1:4,rep(3,4))

# Ex4
rep(6,6)
rep(c(5,8),4)
rep(c(5,8),c(4,4))

# Ex5
x = c(5,9,2,3,4,6,7,0,8,12,2,9)
x[2]
x[2:4]
x[c(2,3,6)]
x[c(1:5,10:12)]
x[-(10:12)]

# Ex6
y = c(33,44,29,16,25,45,33,19,54,22,21,49,11,24,56)
summary(y[1:3])
summary(y[c(1,4,7,10,13)])

# Ex7
x = matrix(data = c(3,2,-1,1), nrow = 2, ncol = 2, byrow = T)
x

y = matrix(data = c(1,4,0,0,1,-1), nrow = 2, ncol = 3, byrow = T)
y
2*x
x*x
x%*%x
x%*%y
t(y)
solve(x)
