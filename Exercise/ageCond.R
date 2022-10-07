df = read.csv(file.choose(), header = T)
names(df)
attach(df)

df
df$Index = numeric(length(df$Age))
df$Index 

for (i in 1:length(df$Age)){
    if(df$Age[i]<=60){
        df$Index[i]=0
    }
    else if(df$Age[i]>60 & df$Age[i]<=70){
        df$Index[i]=1
    }
    else if(df$Age[i]>70 & df$Age[i]<=80){
        df$Index[i]=2
    }
    else{
        df$Index[i]=3
    }
}

df
