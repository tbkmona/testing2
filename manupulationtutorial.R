# lets read CompanyRevenues.csv data
# interactive select
companiesData <- read.csv(file.choose(), header = TRUE, stringsAsFactors = FALSE)
                             
  view(companiesData)
  
  # eliminate the last row
  mmtData <- companiesData[1:17,]
  
  view(mmtData)
  colnames(mmtData)
  
  # load tidyverse
  library(tidyverse)
  
  # dropping off school children column
  
  # mmtData2 = subset(mmtData, select = -c(x,z) )
  
  mmtData2 = subset(mmtData, select = -c(SCHOOL.CHILDREN) )
  
  view(mmtData2)
  
str(mmtData2) # inspect data

mmtData2$REVENUE <- factor(mmtData2$REVENUE, ordered = TRUE)

  # add a new column called revenuebus

mmtData3 <- mutate(mmtData2, revenuebus = REVENUE/OPS..BUSES)

# rename column names


colnames(mmtData2) <- c()

#saving my new file

write.csv(mmtData2, file = "Monthly_stats.csv")

df <- data.frame(color = c("blue", "black",
                           "blue", "blue",
                           "black"),
                 value = 1:5)