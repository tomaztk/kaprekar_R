# Kaprekar constant - 6174
library(stringr)

#Take any four-digit number, with minimum of two different numbers (1122 or 5151 or 1001 or 4375 and so on.)

kap <- function(num){
  #check the len of number
  if (nchar(num) == 4) {
      kaprekarConstant = 6174
      #res = num
      while (num != kaprekarConstant) {
      nums <- as.integer(str_extract_all(num, "[0-9]")[[1]])
      sortD <- as.integer(str_sort(nums, decreasing = TRUE))
      sortD <- as.integer(paste(sortD, collapse = ""))
      sortA <- as.integer(str_sort(nums, decreasing = FALSE))
      sortA <- as.integer(paste(sortA, collapse = ""))
      
      num = as.integer(sortD) - as.integer(sortA)
      r <- paste0('Pair is: ',as.integer(sortD), ' and ', as.integer(sortA), ' and result of subtraction is: ', as.integer(num))
      print(r)
      
      }
  } else {
    print("Number must be 4-digits")
  }
}

kap(1247)
kap(1465)
kap(5462)
kap(6235)
kap(3813)
kap(5238)

df_result <- data.frame(number =as.numeric(1465), steps=as.numeric(7))

df_result <- rbind(df_result, data.frame(number=1465, steps=7))
df_result <- rbind(df_result, data.frame(number=5462, steps=7))
df_result <- rbind(df_result, data.frame(number=6235, steps=2))
df_result <- rbind(df_result, data.frame(number=3813, steps=4))



#create empty dataframe for results
df_result <- data.frame(number =as.numeric(0), steps=as.numeric(0))
i = 1000
korak = 0


# Generate the list of all 4-digit numbers
while (i <= 9999) {
  korak =  0
  num = i
  while ((korak <= 10) & (num != 6174)) {
    
    nums <- as.integer(str_extract_all(num, "[0-9]")[[1]])
    sortD <- as.integer(str_sort(nums, decreasing = TRUE))
    sortD <- as.integer(paste(sortD, collapse = ""))
    sortA <- as.integer(str_sort(nums, decreasing = FALSE))
    sortA <- as.integer(paste(sortA, collapse = ""))
    num = as.integer(sortD) - as.integer(sortA)
    
    korak = korak + 1
    #print(num)
    #print(korak)
    
    if((num == 6174)){
      r <- paste0('Number is: ', as.integer(i), ' with steps: ', as.integer(korak))
      print(r)
      df_result <- rbind(df_result, data.frame(number=i, steps=korak))
      
    }
  }
  
  i = i + 1
}

# stats
summary(df_result)

table(df_result$steps)
hist(df_result$steps, main="Count of Solutions per step")


library(ggplot2)
library(gridExtra)

ggplot(df_result, aes(x=number, y=steps)) + geom_line() 

#par(mfrow=c(1,2))
p1 <- ggplot(df_result, aes(x=number,y=steps)) + 
  geom_bar(stat='identity') + 
  scale_y_continuous(expand = c(0, 0), limits = c(0, 8))


p2 <- ggplot(df_result, aes(x=log10(number),y=steps)) + 
  geom_point(alpha = 1/50)

grid.arrange(p1, p2, ncol=2, nrow = 1)


library(dplyr)

df_result %>%
  filter(steps == 3)

