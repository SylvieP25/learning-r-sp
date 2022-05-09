## Arithmetic operators --------------------------------------------------------

## Calculate BMI of person with weight of 80 kgs and height of 1.6 metres

80 / 1.6 ^ 2


## Relational operators --------------------------------------------------------
## Person A has weight of 80 kgs and height of 1.6 metres.
## Person B has weight of 120 kgs and height of 210 centimetres

## 1. Is **Person A** heavier in weight compared to **Person B**?
80 > 120
80 < 120
80 == 120


## 2. Is **Person A** taller in height compared to **Person B**?
1.6 > 210 / 100
1.6 < 210 / 100
1.6 == 210 / 100

## 3. Whose BMI is greater, **Person A** or **Person B**?
80 / 1.6 ^ 2 > 120 / (210 / 100) ^ 2
80 / 1.6 ^ 2 < 120 / (210 / 100) ^ 2
80 / 1.6 ^ 2 == 120 / (210 / 100) ^ 2


## Logical operators -----------------------------------------------------------

## 1. Is the weight of **Person A** AND the weight of **Person B** both equal to 
## 80 kilograms?

80 == 80 & 120 == 80

## 2. Is the weight of **Person A** OR the weight of **Person B** less than 100 
## kilograms?

80 < 100 | 120 < 100

## 3. Is the weight of **Person A** greater than the weight of **Person B** AND 
## the height of **Person A** greater than the height of **Person B**?

80 > 120 & 1.6 > 210 / 100

## 4. Is the weight of **Person A** greater than the weight of **Person B** OR 
## the height of **Person A** greater than the height of **Person B**?

80 > 120 | 1.6 > 210 / 100


## Assignment operators --------------------------------------------------------

## 1. Assign the weight of person A to an object named `weight_a`

weight_a <- 80

## 2. Assign the height of person A to an object named `height_a`

height_a <- 1.6

## 3. Calculate BMI for person A using objects `weight_a` and `height_a`. 
## Assign the value of BMI to an object named `bmi_a`.

bmi_a <- weight_a / height_a^ 2


## Extra exercises on R operators and objects ----------------------------------

## Create objects for Person B's information

weight_b <- 120                    ## Person B weight
height_b <- 210 / 100              ## Person B height
bmi_b <- weight_b / height_b ^ 2   ## Person B BMI
bmi_a

#Accessing a data set
data("women")
class(women)
nrow(women)
ncol(women)
names(women)
class(names(women))
length(names(women))

#quicker way to receive characteristics of your data is using the str() function

str(women)

#acessing values for variables - use $ sign
women$height
women$weight

#alternatively can use indexing method - with number of variable
women[1]
women[2]

#accessing as specific value in a row e.g. access value for height in row 3
women$height[3]

#alternatively, 

women[3, "height"]

#calculating the mean and median height & weight

mean(women$height)
mean(women$weight)
median(women$height)
median(women$weight)

#accessing other types of files e.g csv
read.table(file = "data/women.csv", header = TRUE, sep = ",")


read.csv(file="women.csv")
women_csv<-read.csv("women.csv")
read.csv("data/women.csv")
read.table("data/women.csv") 
install.packages("openxlsx")
library(openxlsx)
read.xlsx("data/women.xlsx")
women_xlsx<-read.xlsx("data/women.xlsx")
read.csv("women.csv")
women$height
women$weight

#Calculating BMI for women.csv including conversion calculations
(women$weight*0.453592)/(women$height*0.0254)^2

#Naming BMI calculations as a object 
BMI_all <- (women$weight*0.453592)/(women$height*0.0254)^2

#Mean & Median BMI
median(BMI_all)
mean(BMI_all)
BMI_all>median(BMI_all)

#BMIs over 23

BMI_all>23

#Finding the Maximum BMI
max(BMI_all)
#Finding the Minimum BMI
min(BMI_all)

#assigning objects to max and min values

Highest_BMI<-max(BMI_all)
Lowest_BMI<-min(BMI_all)

#Finding the positiion of 
match(Highest_BMI,BMI_all)
match(Lowest_BMI,BMI_all)
