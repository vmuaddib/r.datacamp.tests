#The term factor refers to a statistical data type used to store categorical variables. 
#The difference between a categorical variable and a continuous variable is that a categorical variable can belong to a limited number of categories. 
#A continuous variable, on the other hand, can correspond to an infinite number of values.
gender_vector <- c("Male","Female","Female","Male","Male")
factor_gender_vector <- factor(gender_vector)

#There are two types of categorical variables:a nominal categorical variable and an ordinal categorical variable.

#A nominal variable is a categorical variable without an implied order. This means that it is impossible to say that 'one is worth more than the other' . 
#For example, think of the categorical variable animals_vector with the categories "Elephant", "Giraffe", "Donkey" and "Horse" . 
#Here, it is impossible to say that one stands above or below the other.

#In contrast, ordinal variables do have a natural ordering. Consider for
#example the categorical variable temperature_vector with the categories:"Low", "Medium" and "High" . 
#Here it is obvious that "Medium" stands above "Low", and "High" stands above "Medium" .

animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
temperature_vector <- c("High", "Low", "High", "Low", "Medium")

factor_animals_vector <- factor(animals_vector)
factor_animals_vector
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector


#When you first get a data set, you will often notice that it contains factors with specific factor levels. 
#However, sometimes you will want to change the names of these levels for clarity or other reasons. R allows you to do this with the function levels():

#levels(factor_vector) <- c("name1", "name2", ...)

#NOMINAL FACTORS
survey_vector <- c("M", "F", "F", "M", "M")
# Encode survey_vector as a factor
factor_survey_vector <- factor(survey_vector)
factor_survey_vector
# Specify the levels of 'factor_survey_vector'
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

#one of your favorite functions in R will be summary() . This will give you a quick overview of the contents of a variable:



#ORDERED FACTORS
# Create 'speed_vector'
speed_vector <- c("Fast", "Slow", "Slow", "Fast", "Ultra-fast")

#speed_vector should be converted to an ordinal factor since its categories have a natural ordering. 
#By default, the function factor() transforms speed_vector into an unordered factor. 
#To create an ordered factor, you have to add two additional arguments:ordered and levels.

#factor(some_vector,
#       ordered = TRUE,
#       levels = c("lev1", "lev2" ...))


factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("Slow", "Fast", "Ultra-fast"))

# Print
factor_speed_vector

# R prints automagically in the right order
summary(factor_speed_vector) 