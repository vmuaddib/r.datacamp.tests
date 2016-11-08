#A list in R is similar to your to - do list at work or school:the different items on that list most likely differ in length, characteristic, type of activity that has to do be done, ...
#A list in R allows you to gather a variety of objects under one name(that is, the name of the list) in an ordered way. These objects can be matrices, vectors, data frames, even other lists, etc. It is not even required that these objects are related to each other in any way.

# Create the data frame:
planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune");
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883);
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67);
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE);
planets_df <- data.frame(planets, type, diameter, rotation, rings)


# Vector with numerics from 1 up to 10
my_vector <- 1:10
# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)
# First 10 elements of the built-in data frame 'mtcars'
my_df <- planets_df[1:4,]

my_list <- list(my_vector, my_matrix, my_df)
names(my_list) <- c("Vect", "Mtrx", "Dataframe")

my_second_vector <- 10:20

ext_list <- c(my_list, secondVec = my_second_vector)
ext_list2 <- c(my_list, year = 1980)