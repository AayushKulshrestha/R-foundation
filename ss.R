#R Practice questions
#1. Use R code to get a description of the version of R and its 
#attached packages used in the current session?

sessionInfo()

#2. Create an object that has the list of all the installed packages in your system.

objects <- installed.packages()

#3.Create an object with the following data types
#and check their data types by using the class function after creation

#a. integer

ineteger <- c(1,2,3,4)
class(ineteger)
typeof(ineteger)
length(ineteger)
attributes(ineteger)

#numeric
numeric1 <- c(1, 34.5, 3.145, -24, -45.003)
class(numeric1)
typeof(numeric1)
length(numeric1)
attributes(numeric1)

#Character

character1 <- c("a","b","c","d")

class(character1)
typeof(character1)
length(character1)
attributes(character1)

#logical

x=1
y=2
z =x>y
z
class(z)
typeof(z)
length(z)
attributes(z)

#complex

Complex1 <- 5i

class(Complex1)
typeof(Complex1)
length(Complex1)
attributes(Complex1)

#4.
object_1 <-"my_text"
as.numeric(object_1)
as.character(object_1)
as.vector(object_1)
as.matrix(object_1)
as.data.frame(object_1)



object_2 <- "123.456"

as.numeric(object_2)
as.character(object_2)
as.vector(object_2)
as.matrix(object_2)
as.data.frame(object_2)

object_3 <- 123.456
as.numeric(object_3)
as.character(object_3)
as.vector(object_3)
as.matrix(object_3)
as.data.frame(object_3)


object_4 <- 0
as.numeric(object_4)
as.character(object_4)
as.vector(object_4)
as.matrix(object_4)
as.data.frame(object_4)


object_5 <- FALSE

as.numeric(object_5)
as.character(object_5)
as.vector(object_5)
as.matrix(object_5)
as.data.frame(object_5)

#5. List all the objects in the current session.
ls()
objects()

#6. Convert the data "1/December/1998" into a Date type.

data1<- c('1/December/1998')

dates <- as.Date(data1,"%d/%B/%Y")

class(dates)

#7. Find the number of years from the Independence of India till present.

today <- Sys.Date()

start = as.Date("1947-08-15")


lubridate::time_length(difftime(today, start), "years")



#8. Convert the following text into a Date format:
#"On the 16th of December the hostilities between the two countries ended and a new 
#nation was formed in the winter of 1971" 

library(lubridate)
x <- c('On the 16th of December the hostilities between the two countries ended and a new nation was formed in the winter of 1971')

parse_date_time("On the 16th of December the hostilities between the two countries
ended and a new nation was formed in the winter of 1971",orders=c("ymd", "dmy", "mdy"))


#9. Convert the string "December-31-2018" to a date format and extract the month.

library(lubridate)

data2 <- as.Date("December-31-2018",format ="%B-%d-%Y")
class(data2)

lubridate::year(data2)



#10. Create a vector with 5 numbers and find the data type of it

vec <- c(1,2,3,4,5)

class(vec)

#11. Create a vector with 5 numbers and 1 text and find the data type of it.


vec2 <-c(1,2,3,4,5,"abc")

class(vec2)
typeof(vec2)

#12. Create a vector with number from 1 to 1000 with a step of 10

seq(1,1000,by=10)

#13. Create a vector V1 having numbers from 11 to 20. (Hint: use n:m )

v1<-11:20
v1

#14. Extract the 5th, 7th and 9th element of the vector v1 and save it in an object V2

v2 <- v1[seq(5,9,by=2)]

#15. Save the first 9 elements of the vector V1 in a separate object naming 'V3'.

v3 <- seq(1,9)
v3

#16. Create a vector "Airport.Codes" with the following information:
#DEL, BOM, PUN, MAA, DEL, MAA, PUN, DEL, MAA, PUN, PUN, DEL, BOM


Airport.Codes <- c("DEL","BOM","PUN","MAA","DEL","MAA","PUN","DEL","MAA","PUN","PUN","DEL","BOM")


#17. PUN is the incorrect airport code and it should be PNQ. 
#Replace the values in the vector Airport.Codes.

Airport.Codes <- replace(Airport.Codes,Airport.Codes=="PUN","PNQ")

Airport.Codes



#18. Create vector "x" with the values {4, 4, 5, 6, 7, 2, 9}. 
#a. Calculate the number of observation (n), mean, sum, max, min, variance of the vector 'x".

x<-c(4,4,5,6,7,2,9)

table(x)
#length(which(numbers==x))
sum(x == x)
mean(x)
sum(x)
max(x)
min(x)


#b. Also print the 3rd element, odd positions elements and elements from 2 to 6 positions.
x[3]

x[x%%2 ==!0]


x[2:6]

#19. Create a vector 'Age' with values from 1 to 99.

Age <- seq(1,99)
Age


#20. Create a vector 'Young.Old' by extracting values from 1 to 18 and 80 to 99 from Age Vector.

Young.old <- Age[-c(19:79)]
Young.old


#21. Find the number of elements in the vector Young.Old

sum(Young.old == Young.old)



#22. Find the sum, mean, median, min and max age in the vector Young.Old

sum(Young.old)
mean(Young.old)
median(Young.old)
min(Young.old)
max(Young.old)



#23. Create 6x4 matrix (6 rows and 4 columns) using 1 to 24 numbers

matrix(data=1:24,nrow = 6,ncol = 6,byrow = TRUE)


#24 Create a vector 'for.m' which has 30 numeric values.
#Use this vector to create a matrix my_matrix with 10 rows.

for.m <- c(1:30)
for.m

my_matrix <-matrix(data = for.m,nrow = 10)
my_matrix


#26. Create data frame with the below vectors 
#StoreID - (111, 208, 113, 408) 
#Tenure - (25, 34, 28, 52) 
#StoreType - ("Type1", "Type2", "Type1", "Type1") 
#status - ("Poor", "Improved", "Excellent", "Poor")

StoreID <- c(111, 208, 113, 408)
Tenure <- c(25, 34, 28, 52)
StoreType <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")

#27. Print the data in different programs. 
#a. only storeId, tenure
#b. only storetype and status 
#c. only tenure

cat(StoreID,Tenure)

cat(StoreID,status)

print(Tenure)



#28. Create a data.frame 'Employee.Info' by combining vectors. The table should have 4 columns with 5 rows
#The columns should be - 'Employee.ID' , 'Employee. Name', 'Employee.Salary' , 'Employee.Department'


Employee.Info <- data.frame(Employee.ID =c(001,002,003,004,005),
                            Employee.Name=c("Rick","Dan","Michelle","Ryan","Gary"),
Employee.Salary=c(623.3,515.2,611.0,729.0,843.25),Employee.Department=
  c("Testing","Development","Sales","Analytics","Accounting"),stringsAsFactors = FALSE)

Employee.Info

#29.  Create different factors using the below vectors and label the values and order levels for 
#factors "outcome" and "status".
#a. ethnicity - White", "African american", "White", Asian
#b.status - Poor, Improved, "Excellent", "Poor"
#c. outcome - c(1, 3, 2, 4, 3, 1, 1) -labels- "Poor", "Average", "Good", "Excellent"


ethnicity <- factor(c("White","African american","White","Asian"))

status <- factor(c("Poor","Improved","Excellent", "Poor"))

outcome <-factor(c(1, 3, 2, 4, 3, 1, 1),levels=c(1,2,3,4),ordered=TRUE)
outcome

#30. Create list called "mylist" with the title "My First List" and with the below objects 
#called "ages" with below h, j and k.
#Also print the different combinations of objects.
#h -numeric vector with the values 25, 26, 18, 39 j - matrix with 5 rows and 
#2 columns with the values 1 to
#10 k - character vector with the values "one", "two", "three"


mylist <- "My First List"

h <- c(25,26,18,39)

j <- matrix(data=c(1:10),nrow=5,ncol=2,byrow =FALSE)

k <- c("one", "two", "three")

mylist <- list(title=mylist,ages= h,j,k)
mylist


#31 Import the stores.csv dataset and save it as df1.


print(getwd())
setwd("F:\\Analytix_Labs\\R for Data Science\\R Case Studies\\R Practice Assignment\\R Foundation Assignment\Datasets")

df1 <- read.csv("stores.csv")

#32. Apply below functions on stores data frame and observe the outputs. 
class(df1) 
names(df1) 
length(df1) 
dim(df1) 
str(df1) 
head(df1)
tail(df1)
fix(df1) 
summary(df1)
Hmisc::describe(df1)



#33. Import the second sheet of the excel file CarData.xlsx and save it as Car.Info

getwd()
setwd("F:\\Analytix_Labs\\R for Data Science\\R Case Studies\\R Practice Assignment\\R Foundation Assignment\\Datasets")

Car.info <-readxl::read_excel("CarData.xlsx",sheet=2)

#34. Save the object df1 as an .RData file in the hard drive (df1.RData)

saveRDS(Car.info,file = "rData1.rds")

#35. Save all the objects created so far in a .RData File. Name it as My_Backup


My_Backup <- save.image()

#36. Delete df1 and Car.Info from the global environment

rm(df1,Car.info)


#37. Find the names of all the current objects in the global environment and save 
#this information in an object 'Current_objects_in_GE'.



Current_objects_in_GE <- ls()

#38. Delete all the objects available in the global environment

rm(list = ls())


#39. Import the df1.RData file from the hard drive.

#40. Find the summary details of df1 (Hint: use summary() or Hmisc::describe()).

summary(df1)
Hmisc::describe(df1)


#41. Find details regarding the structure of df1 (Hint: use str())
str(df1)


#42. Extract the column Staff_Cnt from df1 and save it in an object 'Staff_Count'.

Staff_Count <- df1[,c("Staff_Cnt")]

#43. Add 10 to every value of the vector 'Staff_Count' and name it as 'Updated_Staff_Count'


Updated_Staff_count <- (Staff_Count) + 10

Updated_Staff_count

#44. Add this vector 'Updated_ Staff_Count' as a column in the data.frame df1

data.frame(Updated_Staff_count)


cbind2(Updated_Staff_count,y = Staff_Count)

head(df1)

df1$Updated_Staff_count <- Updated_Staff_count
head(df1)


#45. Create an object 'Store_Details' by extracting the following columns from df1 
#- StoreCode, StoreName, StoreType, Location, OwnStore.


Store_details <- df1[,c("StoreCode","StoreName","StoreType","Location", "OwnStore")]
Store_details

#46. Find the class of Store_Details
class(Store_details)

#47. Change the data type of the column StoreName from factor to character


as.character(Store_details$StoreName)

class(Store_details$StoreName)


#48. Rename the column 'AcqCostPercust' to 'ACPC' and 'ProfitPercust' to 'PPC'

#install.packages("dplR")
#installed.packages()

#dplyr::rename(.data = df1,"AcqCostPercust"="ACPC")

#head(df1)

names(df1)[names(df1)== "AcqCostPercust"] <- "ACPC"
head(df1)

names(df1)[names(df1)== "ProfitPercust"] <- "PPC"
head(df1)


#49. Create a column 'MarketingSpend' which has a constant value of 200.
#Use this column to create another column 'UpdatedOperatingCost' which is OperatingCost + MarketingSpend


df1$MarketingSpend <- c(200)


df1$UpdatedOperatingCost <- df1$OperatingCost + df1$MarketingSpend
head(df1)


#50. Delete the column MarketingSpend


within(df1, rm(MarketingSpend))


#51. In df1, the UpdatedOperatingCost should be next to the column OperatingCost

colnames(df1)

df1 <- df1[,c(1,2,3,4,5,18,6:17)]

colnames(df1)


#52. In df1, Create new variable store_class as follows. 
#If total sales<120 then "Low Perform store" 
#If total sales>=120 and total sales<240 then "Average Perform store" 
#If total sales>240 then "High Perform store"

1:nrow(df1)


for (i in 1:nrow(df1)) 
{
  if (df1$TotalSales[i]<120)
  {
    df1$Store_class[i]="Low Perform store"}
   else if(df1$TotalSales[i]>=120 & df1$TotalSales[i]<240 )  {
  
    df1$Store_class[i]= "Average Perform store"}
  else{
  
    df1$Store_class[i]>240 ="High Perform store"}
}
#  ---------------------OR--------------
df1$Store_class[df1$TotalSales<120]<-"Low Perform store"
df1$Store_class[df1$TotalSales>=120 & df1$TotalSales<240]<-"Average Perform store"
df1$Store_class[df1$TotalSales>240]<-"High Perform store"



#Content Based Data Manipulation

#53. Find the names of the top 3 SuperMarket stores of Delhi with the highest TotalSales


getwd()
#stores <- read.csv("stores.csv") 

library(dplyr)
df1%>%top_n(n = 3)%>%filter(Location=="Delhi")%>%summarise(max(TotalSales))%>%top_n(StoreName)


class(df1$Location)
typeof(df1$Location)

#`rlang::last_error()`

class(df1$TotalSales)
typeof(df1$TotalSales)
as.integer(df1$TotalSales)


#54. Find the information such as the StoreName, TotalSales, OperatingCost and Staff_Cnt of 
#the stores where the store is owned and there is an online presence.

library(dplyr)
df1%>%Filter(OwnStore==1 && OnlinePresence==1)%>%select(2,7,5)


#55. Check if there are any duplicate rows in df1

duplicated(df1)

#56. Check if there are any duplicate rows in df1 on the basis of StoreCode


dim(df1[duplicated(df1$StoreCode),])[1]

#57 Create a new dataset that has removed duplicates on the basis of StoreName and StoreCode.

df1 = subset(df1,select = -c(StoreName,StoreCode))


#58. How to find missing values in the df1 dataset and recode missing values with 0? 
#Delete the missing values (if there are any) from the data set?


sum(is.na(df1))

df1[is.na(df1)] <- 0


na.omit(df1)


#59. Sort the df1 data as follows
 #a. Create new dataset (newstores) with sorted data by "Storetype"
 #b. Create new dataset (newstores) with sorted data by location(ascending) and
 #totalsales in descending order.

library(dplyr)

newstores <- df1 %>% arrange(StoreType)

#newstores <- df1[
#  with(df1, order(location,-TotalSales)),
#]

newstores <- df1 %>% arrange(df1$Location)%>% arrange(df1$desc(TotalSales))

class(df1$Location)
typeof(df1$TotalSales)
class(df1$Location)
typeof(df1$TotalSales)

is.factor(df1$Location)
newstores<- plyr::arrange(df1,Location,desc(TotalSales))







#60. Create subsets of data from stores data as following conditions.
#a. Only Columns 5,7, 8,9 
newstores[c(5,7,8,9)] 

#b. Excluding columns 5, 7, 8,9 
newstores[-c(5,7,8,9)]

#c. Selecting first 10 observations 

newstores[c(1:10)]

#d. Observations with Storetype= Apparel and totalsales>100 
newstores[which(newstores$StoreType=='Apparel' & newstores$TotalSales >100),]


#e. Columns (storecode, storename, location, totalsales) with totalsales between 100 & 300.


newstores[c("StoreCode","StoreName","Location",between(df1$TotalSales,100,300))]



#f. Include all columns from Storecode to Basketsize with storetype=Electronics and totalsale>100

newstores[c(1:10)] |newstores[which(newstores$StoreType=='Electronics' & newstores$TotalSales >100),]









































