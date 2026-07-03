#Week 8
#Load the required library
library(dplyr)
{
  student_data <- read.csv("C:/Users/hafid/Downloads/student_data.csv")
  View(student_data)
  
  #student fail
  Student_fail <- student_data[student_data$final_exam_mark < 40, ]
  View(Student_fail) # Changed from View(student_data) so you actually see the filtered result!
  
  mydata1 <- student_data %>% 
    filter(final_exam_mark < 40) %>% 
    arrange(desc(final_exam_mark))
  View(mydata1)
  
  mydata2 <- student_data %>% 
  filter(final_exam_mark < 40) %>% 
  arrange(final_exam_mark)
  View(mydata2)
  
  #Select function
  mydata2<- student_data%>% select (student_id,coursework_mark, final_exam_mark)
  View(mydata2) 
  
  #glimpse
  glimpse(student_data)
  
  #mutate
  mydata4 <- student_data %>% 
  mutate(Total_Mark = (coursework_mark + final_exam_mark) / 2)
  View(mydata4)


#Descriptive Statistics________________________________________________________

  data(iris)
  head(iris)
  tail(iris)
  str(iris)
  
  min(iris$Petal.Width)
  max(iris$Petal.Length)
  range(iris$Sepal.Length)
  sd(iris$Sepal.Length)
  
  #quantile
  A<-c(170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5)
  quantile(A)
  
  #counting column and row
  nrow(iris)
  ncol(iris)
  sum(is.na(iris$Sepal.Length))
  
  #Histogram
  hist(iris$Sepal.Length,
       main = "Histogram of Sepal Length",
       xlab = "Sepal Length (cm)",
       ylab = "Frequency",
       col = "lightblue",
       border = "black")
}
