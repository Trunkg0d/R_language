# For Loops
# A for loop is used for iterating over a sequence:

for (x in 1:10) {
  print(x)
}

# Print every item in a list:

fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  print(x)
}

# Print the number of dices:
dice <- c(1, 2, 3, 4, 5, 6)

for (x in dice) {
  print(x)
}

#BREAK
fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  if (x == "cherry") {
    break
  }
  print(x)
}

#NEXT

fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  if (x == "banana") {
    next
  }
  print(x)
}

