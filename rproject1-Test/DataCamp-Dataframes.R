#You may remember from the chapter about matrices that all the elements that you put in a matrix should be of the same type. Back then, your data set on Star Wars only contained numeric elements.
        #When doing a market research survey, however, you often have questions such as:
        #'Are your married?' or 'yes/no' questions(logical)
        #'How old are you?'(numeric)
        #'What is your opinion on this product?' or other 'open-ended' questions(character)
        #...
#A data frame has the variables of a data set as columns and the observations as rows. 

planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune");
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883);
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67);
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE);

# Create the data frame:
planets_df <- data.frame(planets, type, diameter, rotation, rings)

#Select planet diameter
planets_df[, 3]
planets_df[, "diameter"]
planets_df$diameter

rings_vector <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
planets_df[rings_vector,]


#Now, let us move up one level and use the function subset() . You should see the subset() function as a short - cut to do exactly the same as what you did in the previous exercises.
small_planets_df <- subset(planets_df, subset = diameter < 1)

#ORDER
#order() is a function that gives you the ranked position of each element when it is applied on a variable, such as a vector for
    #example:
    #   > a <- c(100, 10, 1000)
    #   > order(a)
    #   [1] 2 1 3
#10, which is the second element in a, is the smallest element, so 2 comes first in the output of order(a) . 100, which is the first element in a is the second smallest element, so 1 comes second in the output of order(a) .
#This means we can use the output of order(a) to reshuffle a:
    #   > a[order(a)]
    #   [1] 10 100 1000

order(planets_df[, 3])
planets_df[order(planets_df[, 3]),]
planets_df[order(planets_df[, 3], decreasing = TRUE),]