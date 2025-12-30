# set working working directory 
getwd() # current working directory 

# location of mydata
path <- "..." # change the path as per your directory 

# changing the working directory
setwd(path)

# checking the directory 
getwd()

# loading the dataxxxxxxxxx`

retail <- read.csv('Online_Retail.csv')

library(lubridate)

retail$InvoiceDate <- dmy_hm(retail$InvoiceDate)

# dplyr package 
library(dplyr)

# 1. select --> selecting columns 
select(retail, InvoiceDate, InvoiceNo, CustomerID)

head(select(retail, -Description))

# 2. filter --> for row filtering 
filter(retail, Country == "United Kingdom")
head(filter(retail, Country == "United Kingdom", Quantity > 1000))

filter(retail, Country == "United Kingdom" | Country == 'France', Quantity > 10000)

# & --> and operator
# | --> or operator

temp <- select(retail, InvoiceDate, InvoiceNo, CustomerID, Country, Quantity)

filter(temp, Country == "United Kingdom" | Country == 'France', Quantity > 10000)


# special pipeline operator : %>% 
select(retail, InvoiceDate, InvoiceNo, CustomerID, Country, Quantity, UnitPrice) %>% 
  filter( Country == "United Kingdom" | Country == 'France', Quantity > 10000) 

# 3. mutate : change | creating new column or manipulating existing 
select(retail, InvoiceNo, CustomerID, Country, Quantity, UnitPrice) %>% 
  filter( Country == "United Kingdom" | Country == 'France') %>% 
  mutate(Sales = UnitPrice * Quantity) %>% 
  View()
# 4. arrange : sorting 
select(retail, InvoiceNo, CustomerID, Country, Quantity, UnitPrice) %>% 
  filter( Country == "United Kingdom" | Country == 'France') %>% 
  mutate(Sales = UnitPrice * Quantity) %>% 
  arrange(Sales) %>% 
  View()

select(retail, InvoiceNo, CustomerID, Country, Quantity, UnitPrice) %>% 
  filter( Country == "United Kingdom" | Country == 'France') %>% 
  mutate(Sales = UnitPrice * Quantity) %>% 
  arrange(desc(Sales)) %>% 
  View()
# 5. group by : aggregation
# 6. summarize 