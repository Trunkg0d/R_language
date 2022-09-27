# 2/ Thể tích hình cầu với bán kính r là. Hãy viết hàm xây dựng 1 dataframe để tính thể 
# tích hình cầu với bán kính tương ứng là 3,4,5,...,20. Cột radius lưu bán kính và cột volume lưu thể tích
r = c(3:20)
r

V = 4*pi*r**3/3
V

result = data.frame(Radus = r, Volume = V)
result

#3
df = read.csv(file.choose(), header = T)
names(df)
attach(df)
df$Age
df

Index=numeric(length(df$Age))
Index
for(i in 1:length(df$Age)){
    if (df$Age[i]<=60){
        df$Index[i] = 0
    } else if (df$Age[i] > 60 & df$Age[i] <=70){
        df$Index[i] = 1
    } else if (df$Age[i] >70 & df$Age[i] <=80){
        df$Index[i] = 2
    } 
    else{
        df$Index[i] = 3
    }
}

df

#4
df = read.csv(file.choose(), header = T)
names(df)
attach(df)

ave_height = numeric(length(df$a))
ave_height

df$ave_height = (df$a + df$b)/2
print(max(df$ave_height))
print(min(df$ave_height))

TBM = sum(df$ave_height * df$n)/sum(df$n)
df$n
print(sum(df$n))
TBM

