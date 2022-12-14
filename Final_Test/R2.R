# Tạo một vectơ X chứa n phần tử (n: tự cho). Viết hàm tính tổng tích lũy đến vị trí thứ i của X
sum = function(vec){
  s = 0
  for(i in vec){
    s = s + i
  }
  return(s)
}
x = sum(c(1,2,3,4,5))
x

# Ex2: Tinh the tich
radius = c(3:20)
radius

volume = function(vec){
  v = (4*pi*vec^3)/3
  return(v)
}
df = data.frame(radius, volume = volume(radius))
df

# Ex3: Age
df = read.csv(file.choose(), header = T)
df
df$Index = rep(NA,length(df$Age))
df$Index
for(i in 1:length(df$Age)){
  if(df$Age[i] <= 60){
    df$Index[i] = 0
  }
  if(df$Age[i] > 60 & df$Age[i] <= 70){
    df$Index[i] = 1
  }
  if(df$Age[i] > 70 & df$Age[i] <= 80){
    df$Index[i] = 2
  }
  if(df$Age[i] > 80){
    df$Index[i] = 3
  }
}
df$Index
df

# Ex5:


