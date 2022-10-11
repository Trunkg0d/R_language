#Generate a random data for 40 students in range(0,10)
point = runif(40, 0.0, 10.0 )
point = round(point,2)
point
mean_fake <- function(point){
    return (sum(point)/length(point))
}
mean_fake(point)
mean(point)

variance <- function(point){
    new_point = abs(point - mean(point))
    return (sum(new_point^2)/(length(new_point) - 1))
}

variance(point)
var(point)

#0.1.7
#a)
meanN = function(x,n){
    return (sum(x[1:n])/n)
}
point = round(runif(20, 0.0, 10.0 ),2)
point

meanN(point,20)

point_square = point^2
meanN_x_square = meanN(point_square,20)


un_variance = meanN_x_square - meanN(point,20)^2
un_variance
var(point)

# d)
un_variance * 20/(20-1)

#0.1.6
coint = c(0:1)
coint
n=3
simulation = function(coint, n){
    for (i in 1:n)
        print(sample(coint, size = 1))
}

simulation(coint, 10)

coint = c(0:1)
money = function(coint, m){
  sum_money = 0
  for( i in 1:m){
    a = sample(coint, size = 1, prob=c(0.65, 0.35))
    print(a)
    if(a==1){
      sum_money=sum_money+10
    } else{
      sum_money=sum_money-5
    }
  }
  return (sum_money)
}

money(coint,7)





