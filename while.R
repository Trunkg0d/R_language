i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
}

# Break
# With the break statement, we can stop the loop even if the while condition is TRUE:

i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
  if (i == 4) {
    break
  }
}

# Next
# With the next statement, we can skip an iteration without terminating the loop:

i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next
  }
  print(i)
}
