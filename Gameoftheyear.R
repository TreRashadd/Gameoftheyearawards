
library(tidyverse) #Used to process and analyze the data
library(ggplot2) #used for the data visualization
library(readr) #Used for importing data from CSV files
library(dplyr) #Used for data manipulation


# Uploading the Dataset from Excel into RStudio

data <- read.csv("C:/Users/Treyv/Downloads/Gameoftheyear.csv")



data


#Testing the data to see if it will run by using the "str{}" function.


str(data)


#2.2 Filtering the data
# Filtering the data so we can select specific columns that we want to see from the dataset


df <- filter (data)



df %>%
    select(Name, Release.date, Copies.sold, Ratings)



df1 <- df %>%
  arrange(desc(Ratings))


#Running "df1" and the selected columns we chose above


df1 %>%
  select(Name,Release.date,Copies.sold,Ratings)



#Visualizing the Ratings of each game


ggplot(data = df, mapping = aes(x = Ratings, y= Name,)) + geom_point(color = "blue", size= 3, alpha = 0.5, shape = 21, fill = "green", stroke = 2) -> lbl
  lbl + geom_label(aes(label = Ratings), size = 3.5, hjust = 1.2, vjust=1)


                                                                     
#Visualizing different number of games sold by genre
  

ggplot(data)+
  geom_bar(aes(x=Genre), fill ='#003366', color ='#add8e6')+
labs(title = "Number of different games sold by Genre")


#visualizing revenue made by each genre

ggplot(data)+
  geom_col(aes(x=Genre, y = Revenue), fill ='#003366', color ='#add8e6')+
  labs(title = "Number of different games sold by Genre")                                                                                                                                          
