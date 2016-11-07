#In R, a matrix is a collection of elements of the same data type(numeric, character, or logical) arranged into a fixed number of rows and columns. Since you are only working with rows and columns, a matrix is called two - dimensional.
#You can construct a matrix in R with the matrix() function. Consider the following example:

matrix(1:9, byrow = TRUE, nrow = 3)
#In the matrix() function:

#The first argument is the collection of elements that R will arrange into the rows and columns of the matrix. Here, we use 1:9 which is a shortcut for
    #c(1, 2, 3, 4, 5, 6, 7, 8, 9) .
#The argument byrow indicates that the matrix is filled by the rows. If we want the matrix to be filled by the columns, we just place byrow = FALSE.
#The third argument nrow indicates that the matrix should have three rows.

#----

# Box office Star Wars: In Millions!
# The first element: US, the second element: Non-US 
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

box_office <- c(new_hope, empire_strikes, return_jedi)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE)
#alternative: star_wars_matrix <- matrix(c(new_hope,empire_strikes, return_jedi), byrow = TRUE, nrow = 3)

#----
#name the columns and region
region <- c("US", "non-US")
titles <- c("new_hope", "empire_strikes", "return_jedi")

colnames(star_wars_matrix) <- region
rownames(star_wars_matrix) <- titles

#----
#Calculating the worldwide box office using rowSums
worldwide_vector <- c(rowSums(star_wars_matrix))

#----
#Adding a column (or multiple column) with cbind i.e. big_matrix <- cbind(matrix1, matrix2, vector1 ...)
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
# siwtch order: all_wars_matrix <- cbind(worldwide_vector, star_wars_matrix)
#Add a row wiht rbind
#Calculate the total revenue for the US and the non-US region and assign total_revenue_vector
colSums(all_wars_matrix)

#----
#Select non-US earning for the first 2 movies and calculate the avg
us_some <- c(all_wars_matrix[1:2, 2])
mean(us_some)