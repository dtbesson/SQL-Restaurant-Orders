# SQL-Restaurant-Orders
An SQL project set by Maven Analytics. They provide a sample dataset with details about a fictitious restaurants orders, as well as 18 questions to answer. The dataset is available at Maven Analytics' data playground page https://mavenanalytics.io/data-playground?pageSize=10

I have attached the SQL queries I wrote, and I have also included screenshots showing specific queries that I found more interesting. 

I was able to do much of this on my own. There were a few questions where I referred to Maven Analytics' video for solutions.

## The Questions
### Objective 1 - Explore the items table.
1. View the menu_items table.
![image](https://github.com/user-attachments/assets/5507e1aa-625a-43db-9db5-749d233f9dbe)
2. Find the number of items on the menu.
3. What are the least and most expensive items on the menu?
4. How many Italian dishes are on the menu?
5. What are the least and most expensive Italian dishes on the menu?
6. How many dishes are in each category?
7. What is the average dish price within each category?

### Objective 2 - Explore the orders table.
1. View the order_details table.
![image](https://github.com/user-attachments/assets/0917f3d6-7660-46e3-8cd4-ccd142a9b011)
2. What is the date range of the table?
3. How many orders were made within this date range?
4. How many items were ordered within this date range?
5. Which orders had the most number of items?
6. How many orders had more than 12 items?
Query:
![image](https://github.com/user-attachments/assets/4d9ac751-87eb-44d7-8000-dbab0d39ff68)
Output:
![image](https://github.com/user-attachments/assets/212ebb81-008f-4fd9-8bb4-9eae0bad38c4)

### Objective 3 - Analyse Customer Behaviour
1. Combine the menu_items and order_details tables into a single table.
Query:
![image](https://github.com/user-attachments/assets/e04205f4-a75d-4522-9cc4-e458bcfd2838)
Output:
![image](https://github.com/user-attachments/assets/ba425055-e8a5-42ba-b7aa-e0c23c04d3dd)
2. What were the least and most ordered items? What categories were they in?
3. What were the top 5 orders that spent the most money?
4. View the details of the highest spend order. What insights can you gather from the results?
5. View the details of the top 5 highest spend orders. What insights can you gather from the results?
Query:
![image](https://github.com/user-attachments/assets/a91e45ce-fcab-4248-a117-3eec67a1999e)
Output:
![image](https://github.com/user-attachments/assets/d5957ef0-8768-453a-9fbd-709cfb5d8ce7)

## Points of Learning
- I found it useful to be reminded that the order in which we write SQL queries (e.g. SELECT, FROM, WHERE), and the order in which they are executed (e.g. FROM, WHERE, SELECT) are different.
- The difference between WHERE and HAVING. WHERE filters before aggregations take place, HAVING filters afterwards.
- To utilise nested queries wherever necessary, e.g. in Q6 of Objective 2.
- Much of this project used quite simple SQL queries. However, given that I have not used SQL in a while, it served as very useful revision. I feel much more confident to move onto a more complex SQL project now.
