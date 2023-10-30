# For decision tree model
library(rpart)
# For data visualization
library(rpart.plot)

# Contains the data
getwd()
train <- read.csv("D:/Bachelor's CS/Semester 3/TEB2043 - Data Science/Lecture/Week 8/Customer Segmentation/Train.csv")

train

# Specify the target variable and predictor variables Train
segmentation <- "Segmentation"
setone <- c("Work_Experience", "Spending_Score", "Family_Size")

# Build the CART model
fit_tree <- rpart(as.formula(paste(segmentation, "~ .")), data = train, method = "class")

rpart.plot(fit_tree)

fit_tree$variable.importance

predictions <- predict(fit_tree, newdata = train, type = "class")


getwd()
test <- read.csv("D:/Bachelor's CS/Semester 3/TEB2043 - Data Science/Lecture/Week 8/Customer Segmentation/Test.csv")

test

# Specify the target variable and predictor variables Test
segmentation2 <- "Segmentation"
settwo <- c("Work_Experience", "Spending_Score", "Family_Size")

# Build the CART model
fit_pokok <- rpart(as.formula(paste(segmentation2, "~ .")), data = test, method = "class")

rpart.plot(fit_pokok)

fit_pokok$variable.importance