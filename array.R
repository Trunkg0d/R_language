# An array with one dimension with values ranging from 1 to 24
thisarray <- c(1:24)
thisarray

# An array with more than one dimension
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray

#Access Array Items
#You can access the array elements by referring to the index position. You can use the [] brackets to access the desired elements from an array:
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

multiarray[2, 3, 2]
multiarray[2, 3, 1]
multiarray[4, 2, 2]

#You can also access the whole row or column from a matrix in an array, by using the c() function:
thisarray <- c(1:24)

# Access all the items from the first row from matrix one
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray[c(1,3),,1]
multiarray[c(1,3),c(1,2),1]

# Access all the items from the first column from matrix one
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray[,c(1),1]

#Check if an Item Exists
# To find out if a specified item is present in an array, use the %in% operator:
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

2 %in% multiarray

#Amount of Rows and Columns
#Use the dim() function to find the amount of rows and columns in an array:
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

dim(multiarray)

#Length
length(multiarray)

#Loop Through an Array
#You can loop through the array items by using a for loop:
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

for(x in multiarray){
  print(x)
}