#1
#create a vector of plants
plants <- c('Tulip', 'Hydrangea', 'Fern', 'Rose', 'Iris', 'Succulent', 'Cactus', 'Orchid', 'African Violet')

#2
#create a vector of plant accessories
accessories <- c('Planters', 'Gardening Tools', 'Fertilizers', 'Soil pH Tester', 'Garden Markers', 'Pruners', 'Water Sprinkler', 'Fungicides', 'Garden Insecticides')

#3
#create a data frame with plants and accessories
plant_accessories <- data.frame('Plants' = plants, 'Accessories' = accessories)

#4
#install packages
install.packages('ggplot2')
install.packages('dplyr')

#5
#load packages
library(ggplot2)
library(dplyr)

#6
#create a bar plot to graph the different plants and accessories offered
ggplot(plant_accessories, aes(x = Plants, y = Accessories)) + 
  geom_bar(stat="identity", fill="aquamarine4") + 
  ggtitle("Plants & Accessories Offered") +
  ylab("Accessories") +
  xlab("Plants") + 
  theme(plot.title = element_text(hjust = 0.5)) 

#7
#create a function to calculate the total cost of plants and accessories
calcTotalCost <- function(price_plants, price_accessories) {  
  total_cost <- price_plants + price_accessories
  return(total_cost)
}

#8
#create a function to calculate the discounts available
calcDiscounts <- function(total_cost) {
  discount <- total_cost * 0.1
  return(discount)
}

#9
#create the price vector of plants
price_plants <- c(5.00, 10.00, 15.00, 20.00, 25.00, 30.00, 35.00, 40.00, 45.00)

#10
#create the price vector of accessories
price_accessories <- c(15.00, 20.00, 25.00, 30.00, 35.00, 40.00, 45.00, 50.00, 55.00)

#11
#create a vector of names for each of the plants
names_plants <- c('Tulip', 'Hydrangea', 'Fern', 'Rose', 'Iris', 'Succulent', 'Cactus', 'Orchid', 'African Violet')

#12
#create a vector of names for each of accessories
names_accessories <- c('Planters', 'Gardening Tools', 'Fertilizers', 'Soil pH Tester', 'Garden Markers', 'Pruners', 'Water Sprinkler', 'Fungicides', 'Garden Insecticides')

#13
#create a data frame with plants, accessories, prices, and names
plant_access_price_name <- data.frame('Plants' = plants, 'Accessories' = accessories, 'Price_Plants' = price_plants, 'Price_Accessories' = price_accessories, 'Name_Plants' = names_plants, 'Name_Accessories' = names_accessories)

#14 
#calculate total cost of plants and accessories
total_cost <- calcTotalCost(price_plants, price_accessories)

#15
#calculate discounts available
discount <- calcDiscounts(total_cost)

#16
#create a data frame of the total cost and discounts 
cost_discounts <- data.frame('Total_Cost' = total_cost, 'Discounts' = discount)

#17
#install the packages
install.packages('ggridges')
install.packages('ggpubr')

#18
#load packages
library(ggridges)
library(ggpubr)

#19
#create a ridgeline plot to visualize the total cost and discounts
ggplot(cost_discounts, aes(x = Total_Cost, y = Discounts)) + 
  geom_ridgeline_gradient(aes(fill = Discounts)) + 
  scale_x_continuous(breaks = gallery$breaks, labels = gallery$labels) + 
  labs(title = "Total Cost & Discounts") + 
  xlab("Total Cost") + 
  ylab("Discounts") + 
  theme_ridges()

#20
#promote website and social media 
#create a website 
#create social media links 
#share on social media 
#use hashtags for promotion 
#send emails to potential customers 
#advertise on online directories 
#attend local community events 
#create promotional materials 
#collaborate with other local businesses 
#start a blog 
#develop an email marketing campaign 
#start a YouTube channel 
#create a loyalty rewards program 
#organize an online contest 
#give out coupons and discounts 
#create videos to showcase the nursery 
#run an influencer marketing campaign 
#engage with customers on social media 
#develop a referral program 
#partner with local organizations 
#attend trade shows