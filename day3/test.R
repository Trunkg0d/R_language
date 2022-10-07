sixes <- function(x){
    for (i in x){
        if (i == 6){
            return (TRUE)
        }
    }
    return (FALSE)
}

play<-function(5, 25){
    result = c(1,2,3,4,5,6)
    x=sample(result,5,replace=TRUE)
    sum=0
    if(sixes(x)==(TRUE)){
        sum=sum+1
    }
    return (sum/25)
}

play(5,25)
