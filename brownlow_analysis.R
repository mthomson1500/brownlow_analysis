
#importing rvest
library(rvest)

#scraping AFL data for 2017
webpage <- read_html("https://afltables.com/afl/stats/2017a.html")
tbls <- html_nodes(webpage, "table")
data_17 <- webpage %>%
  html_nodes("table") %>%
  .[1] %>%
  html_table(fill = TRUE)

#scraping brownlow votes for 2017
brownlow <- read_html("https://afltables.com/afl/brownlow/brownlow2017.html")
votes <- html_nodes(brownlow, "table")
votes17 <- brownlow %>%
  html_nodes("table") %>%
  .[1] %>%
  html_table(fill = TRUE)

#checking the dataframe
str(data_17)
str(votes17)

#cleaning and preparing the dataframe

#merging brownlow votes data with statistics 

#visualising the data