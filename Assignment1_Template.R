  # Assignment 1 for BUSI 5100
# 
# 
# 
# Full Name: Meaghan Good
# Student ID: 100655852
# Email Address: meaghan.good@ontariotechu.net
# 
# 
# 
#Load all required libraries here:----

library(readr)
library(dplyr) 
library(tibble) 
library(ggplot2)

# Question 1 answer:----
setwd("/Users/meaghangood/Library/CloudStorage/GoogleDrive-meaghan.good@ontariotechu.net/My Drive/MBAI5100_Business_Analytics")

customerdatacsv <- "customers_data.csv" #importing customers_data.csv into a tiddle called customerdatacsv
productsdatacsv <- "products_data.csv" #importings products_data.csv into a tiddle called productsdatacsv
transactionsdatacsv <- "transactions_data.csv"#importing transactions_data.csv into a tiddle transactionsdatacsv

customers_data <- read_csv(customerdatacsv) #creating a tiddle for the data to be read into customers_data
products_data <- read_csv(productsdatacsv) #creating a tiddle for the data to be read into products_data
transactions_data <- read_csv(transactionsdatacsv) #creating a tiddle for the data to be read into products_data

  
# Question 2 answer:----
print("Glimpse of Customer Data:")
glimpse(customers_data) #using glimpse, looking at how many rows and columns are in customers_data

print("Glimpse of Product Data:")
glimpse(products_data)#using glimpse, looking at how many rows and columns are in products_data

print("Glimpse of Transaction Data:")
glimpse(transactions_data) #using glimpse, looking at how many rows and columns are in transactions_data

#Answer to the Question 2 __________________________________________________
# Glimpse of Customer Data:
#   > glimpse(customers_data)
# Rows: 2,500
# Columns: 11
# $ Customer_ID           <dbl> 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 102…
# $ Name                  <chr> "Customer 1", "Customer 2", "Customer 3", "Customer 4", "Customer 5", "Customer 6", "Customer 7", "Customer 8", "Customer 9", "Customer 10", …
# $ Age                   <dbl> 48, 32, 68, 31, 20, 59, 67, 60, 54, 69, 31, 42, 43, 44, 22, 68, 44, 45, 26, 46, 52, 25, 43, 24, 59, 26, 36, 53, 31, 34, 60, 56, 70, 29, 32, 4…
# $ Gender                <chr> "Male", "Other", "Female", "Female", "Female", "Other", "Female", "Other", "Female", "Male", "Male", "Male", "Female", "Other", "Other", "Oth…
# $ Location              <chr> "Houston", "San Francisco", "San Francisco", "San Francisco", "San Francisco", "San Francisco", "Chicago", "Chicago", "San Francisco", "Chica…
# $ Preferred_Language    <chr> "Spanish", "French", "French", "Spanish", "German", "Spanish", "Spanish", "Spanish", "Spanish", "Spanish", "French", "German", "German", "Spa…
# $ Newsletter_Subscribed <chr> "No", "Yes", "Yes", "No", "Yes", "Yes", "No", "Yes", "No", "No", "No", "No", "Yes", "No", "No", "No", "No", "Yes", "Yes", "Yes", "No", "No", …
# $ Subscription_Date     <date> NA, 2022-06-30, 2023-03-27, NA, 2022-09-09, 2022-04-15, NA, 2023-05-04, NA, NA, NA, NA, 2022-12-10, NA, NA, NA, NA, 2023-11-21, 2022-12-22, …
# $ Year                  <dbl> NA, 2022, 2023, NA, 2022, 2022, NA, 2023, NA, NA, NA, NA, 2022, NA, NA, NA, NA, 2023, 2022, 2023, NA, NA, 2022, 2022, 2022, NA, NA, 2022, 202…
# $ Month                 <dbl> NA, 6, 3, NA, 9, 4, NA, 5, NA, NA, NA, NA, 12, NA, NA, NA, NA, 11, 12, 10, NA, NA, 2, 1, 2, NA, NA, 2, 1, 10, 8, 2, NA, NA, 4, 3, 2, 3, NA, 9…
# $ Day                   <dbl> NA, 30, 27, NA, 9, 15, NA, 4, NA, NA, NA, NA, 10, NA, NA, NA, NA, 21, 22, 25, NA, NA, 27, 17, 1, NA, NA, 10, 27, 13, 2, 18, NA, NA, 8, 11, 22…
# > 
# > cat("\nGlimpse of Product Data:\n")
# 
# Glimpse of Product Data:
# > glimpse(products_data)
# Rows: 100
# Columns: 6
# $ Product_ID   <dbl> 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, …
# $ Product_Name <chr> "Product 1", "Product 2", "Product 3", "Product 4", "Product 5", "Product 6", "Product 7", "Product 8", "Product 9", "Product 10", "Product 11", "Prod…
# $ Category     <chr> "Toys", "Toys", "Home Goods", "Toys", "Books", "Home Goods", "Electronics", "Clothing", "Electronics", "Clothing", "Home Goods", "Home Goods", "Toys",…
# $ Price        <dbl> 305.22, 468.55, 230.25, 68.85, 102.17, 493.17, 79.56, 346.95, 295.99, 293.94, 74.39, 333.56, 168.09, 273.01, 489.28, 45.03, 266.87, 201.79, 381.59, 49…
# $ Supplier     <chr> "Supplier i", "Supplier j", "Supplier i", "Supplier d", "Supplier w", "Supplier w", "Supplier a", "Supplier r", "Supplier k", "Supplier j", "Supplier …
# $ Discontinued <chr> "No", "Yes", "No", "Yes", "No", "No", "No", "Yes", "Yes", "Yes", "No", "No", "Yes", "No", "No", "No", "No", "Yes", "Yes", "Yes", "Yes", "Yes", "No", "…
# > 
#   > cat("\nGlimpse of Transaction Data:\n")
# 
# Glimpse of Transaction Data:
#   > glimpse(transactions_data)
# Rows: 15,033
# Columns: 11
# $ Transaction_ID <dbl> 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008, 3009, 3010, 3011, 3012, 3013, 3014, 3015, 3016, 3017, 3018, 3019, 3020, 3021, 3022, 3023, 3024, 3025…
# $ Customer_ID    <dbl> 1813, 3032, 1780, 2908, 2322, 1666, 3213, 1100, 1491, 1171, 2859, 2204, 3033, 2327, 2328, 3047, 1646, 3162, 2138, 1021, 1706, 1182, 3087, 2816, 2438…
# $ Date           <chr> "4/14/2023", "6/13/2022", "2/15/2023", "1/26/2023", "11/9/2023", "4/13/2023", "12/10/2023", "6/25/2023", "8/14/2022", "9/4/2022", "7/1/2022", "5/18/…
# $ Year           <dbl> 2023, 2022, 2023, 2023, 2023, 2023, 2023, 2023, 2022, 2022, 2022, 2023, 2022, 2023, 2023, 2022, 2022, 2022, 2022, 2022, 2022, 2022, 2023, 2023, 2022…
# $ Month          <dbl> 4, 6, 2, 1, 11, 4, 12, 6, 8, 9, 7, 5, 11, 11, 4, 3, 3, 2, 10, 1, 12, 1, 6, 2, 8, 7, 12, 1, 5, 3, 3, 2, 6, 4, 11, 8, 4, 6, 2, 9, 3, 12, 12, 12, 4, 9,…
# $ Day            <dbl> 14, 13, 15, 26, 9, 13, 10, 25, 14, 4, 1, 18, 20, 2, 25, 3, 12, 20, 18, 27, 24, 25, 12, 4, 24, 23, 23, 22, 19, 20, 1, 26, 6, 1, 24, 7, 20, 16, 6, 7, …
# $ Product_ID     <dbl> 2024, 2069, 2017, 2099, 2017, 2088, 2082, 2096, 2034, 2045, 2045, 2092, 2064, 2073, 2053, 2007, 2063, 2092, 2082, 2089, 2054, 2084, 2040, 2080, 2062…
# $ Quantity       <dbl> 7, 7, 6, 5, 9, 7, 10, 5, 4, 3, 1, 4, 1, 1, 3, 9, 9, 5, 6, 8, 10, 2, 6, 3, 3, 6, 7, 1, 10, 7, 6, 6, 10, 9, 9, 8, 3, 9, 1, 7, 6, 5, 3, 9, 9, 1, 10, 1,…
# $ Total_Amount   <dbl> 685.37, 2246.86, 1601.22, 2225.85, 2401.83, 3007.06, 975.10, 2468.90, 222.60, 1043.16, 347.72, 706.76, 388.30, 217.20, 1214.61, 716.04, 438.30, 883.…
# $ Promo_Code     <chr> "HOLIDAY", NA, NA, "FREESHIP", "FREESHIP", "FREESHIP", "FREESHIP", "HOLIDAY", NA, "SAVE10", "SAVE10", "FREESHIP", "HOLIDAY", "SAVE10", "FREESHIP", "…
# $ Store_Location <chr> "Online", "Physical Store", "Online", "Mobile App", "Physical Store", "Mobile App", "Online", "Mobile App", "Mobile App", "Online", "Mobile App", "M…#_
#-__________________________________________________

# Question 3 answer:----
transactions_2023 <- tibble(
  filtered_transread <- transactions_data %>% filter(Year == 2023)
)

print("Filtered Transaction Data (data from 2023):")
print(head(transactions_2023,10))


# Question 4 answer:----

customer_summary <- transactions_data %>% #creating a new tiddle called customer_summary and inputing transactions_data into the new tiddle to get the desired outcome
  group_by(Customer_ID) %>% #grouping the Customers
  summarise( #summarizing the transactions by the customers and also adding how much they spent 
    total_transactions = n(), #counting the number of transactions
    total_amount_spent = sum(Total_Amount) #totaling the amount spent
  ) %>%
  arrange(desc(total_amount_spent)) #arranging the total spent from highest to lowest

print(head(customer_summary, 10)) # printing the top 10 rows of customer_summary


# Question 5 answer:----

premium_customers <- customers_data %>% #creating a new tiddle called premium_customers with the customers_data information
  left_join(customer_summary, by = "Customer_ID") %>% #joining the customer_summary tiddle to customer_data by the column called Customer_ID
  filter(total_amount_spent >= 10000) %>% #filtering out any Total Amount Spent that is less than 10,000 
  rename(Total_Transaction = total_amount_spent) %>% #renaming the column called total_amount_spent to Total_Transaction
  select(everything(), Total_Transaction) # Moving Total_Transaction to the end of the columns

print(head(premium_customers))# Display the first few rows and structure of the premium_customers tibble



# Question 6 answer:----


transaction_product_join <- products_data %>% #creating a new tiddle called transaction_product_join with the products_data information
  left_join(transactions_data, by ="Product_ID") %>% #joining the transactions_data tiddle to products_data by the column called Product_ID
  group_by(Category) #grouping the new tiddle by Category
print(transaction_product_join) #what the grouping looks like
  
category_counts <- transaction_product_join %>% #creating a new tiddle called category_counts with the tiddle above
  summarise(transaction_count = n()) %>% #summarizing the and counting the amount of transactions per category group
  arrange(desc(transaction_count)) #arranging the new summary by highest to lowest


ggplot(category_counts, aes(x = reorder(Category, -transaction_count), y = transaction_count)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(
    title = "Number of Transactions by Product Category",
    x = "Product Category",
    y = "Number of Transactions"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    plot.title = element_text(hjust = 0.5)
  )




# Question 7 answer:----
transactions_data <- transactions_data %>% 
  mutate(Discounted_Amount = case_when(
    Total_Amount > 100 ~ Total_Amount* 0.9,  # 10% discount for amounts over $100
    TRUE ~ Total_Amount  # No discount for amounts $100 or less
  ))
print(transactions_data)


# Question 8 answer:----

location_summary <- customers_data %>% #creating a new tiddle called location_summary and inputting the data from customers_data
  left_join(transactions_data, by = "Customer_ID") %>% #
  group_by(Location) %>%
  summarise(
    Number_of_Transactions = n(),
    Total_Amount_Spent = sum(Total_Amount, na.rm = TRUE)
  ) %>%
  arrange(desc(Number_of_Transactions))

# View the result
print(location_summary)



# Question 9 answer:----

frequent_customers <- transactions_2023 %>%
  group_by(Customer_ID, Month) %>%
  summarise(Purchases = n_distinct(Transaction_ID)) %>%
  filter(Purchases >= 3) %>%
  ungroup() %>%
  distinct(Customer_ID)

# View the result
print(frequent_customers)



# Question 10 answer:----

frequent_customers <- transactions_2023 %>%
  group_by(Customer_ID, Month) %>%
  summarise(Purchases = n_distinct(Transaction_ID)) %>%
  ungroup() %>%
  group_by(Customer_ID) %>%
  summarise(
    AllMonths = n_distinct(Month) == 12,
    AllPurchases3Plus = all(Purchases >= 3)
  ) %>%
  filter(AllMonths & AllPurchases3Plus) %>%
  select(Customer_ID)

# View the result
print(frequent_customers)




# Question 11 answer:----


electronics_transactions <- transactions_data %>%
  left_join(products_data, by = "Product_ID") %>%
  filter(Category == "Electronics") %>%
  left_join(customers_data, by = "Customer_ID")

ggplot(electronics_transactions, aes(x = Quantity, y = Total_Amount, color = Store_Location)) +
  geom_point() +
  labs(
    title = "Total Amount vs. Quantity for Electronics Transactions",
    x = "Quantity",
    y = "Total Amount",
    color = "Store Location"
  ) 
  theme_minimal()
