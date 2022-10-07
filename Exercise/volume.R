r<-c(3:20)
r
volume <- function(r){
    v = 4*pi*r*r*r/3
}

df = data.frame(radius = r, volume = volume(r))
df
