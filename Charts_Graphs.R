# defining vector
x <- c(7, 15, 23, 12, 44, 56, 32)

# plotting vector
par(mfrow=c(2,2))
barplot(x, xlab = "GeeksforGeeks Audience",
		ylab = "Count", col = "salmon",
		col.axis = "black",
		col.lab = "black")

# defining vector x with number of articles
x <- c(210, 450, 250, 100, 50, 90)

# defining labels for each value in x
names(x) <- c("Algo", "DS", "Java", "C", "C++", "Python")

# creating pie chart
pie(x, labels = names(x), col = "white",
main = "Articles on GeeksforGeeks", radius = -1,
col.main = "darkgreen")






