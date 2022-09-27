my_function <- function() { # create a function with the name my_function
  print("Hello World!")
}

my_function()

a <- c(1:10)

sumArray<- function(a){
    sum<-0
    for(i in a){
        sum<-sum+i
    }
    sum
}
sumArray(a)
