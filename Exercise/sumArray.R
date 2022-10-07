a<-c(1:10)
a
sumArr <- function(a) {
    sum = 0
    for (i in a){
        sum=sum+i
    }
    print(sum)
}

sumArr(a)

