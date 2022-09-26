# Lists
# A list in R can contain many different data types inside it. A list is a collection of data which is ordered and changeable.
# List of strings
thislist <- list("apple", "banana", "cherry")

# Print the list
thislist

#Access Lists
thislist <- list("apple", "banana", "cherry")

thislist[1]

#Change Item Value
thislist <- list("apple", "banana", "cherry")
thislist[1] <- "blackcurrant"

# Print the updated list
thislist

#List Length
length(thislist)

# Add List Items
# To add an item to the end of the list, use the append() function:
thislist <- list("apple", "banana", "cherry")

append(thislist, "orange")

#To add an item to the right of a specified index, add "after=index number" in the append() function:
thislist <- list("apple", "banana", "cherry")

append(thislist, "orange", after = 2)

#Remove List Items
#You can also remove list items. The following example creates a new, updated list without an "apple" item:
thislist <- list("apple", "banana", "cherry")

newlist <- thislist[-1]
newlist2 <- thislist[-3]
# Print the new list
newlist
newlist2

#Range of Indexes
thislist <- list("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")

thislist[2:5]

# Loop Through a List
# You can loop through the list items by using a for loop:
thislist <- list("apple", "banana", "cherry")

for (x in thislist) {
  print(x)
}

# Join Two Lists
# There are several ways to join, or concatenate, two or more lists in R.

# The most common way is to use the c() function, which combines two elements together:
list1 <- list("a", "b", "c")
list2 <- list(1,2,3)
list3 <- c(list1,list2)

list3

#Index by name
fruits = list()
fruits

fruits$apple = "American apple"
fruits$mango = "Viet Nam mango"
fruits

