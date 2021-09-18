# Northwind Traders

## Story

_Northwind Traders_ is a huge trading company which imports and exports
specialty foods from around the world. You are a member of the Data
Analysis team, and your task is to help the management to understand
what is going on in the company.

The Entity-Relationship Diagram for the database is the following.
![application process assignment.png](media/sql/northwind-ER.png)

## What are you going to learn?

- Answer complex business questions using advanced SQL commands.
- Join database tables (`JOIN`).
- Use aliases (`AS`).
- Group results to use aggregated functions (`GROUP BY`, `COUNT`).
- Order rows (`ORDER BY`).
- Filter aggregated results (`HAVING`).
- Use some PostgreSQL specific aggregate functions (`ARRAY_AGG`, `STRING_AGG`).

## Tasks

1. Your first task is to create a query that shows which product is made by whom. Lists products and their suppliers. Display the `product_name` and the `company_name` of the supplier. Name result columns as `product` and `company` respectively. Order the results alphabetically by `product_name` and by `company_name`. Save the SQL query as `task-1.sql`.
    - The result of the query starts with the following lines.
```
     product      |           company
------------------+-----------------------------
Alice Mutton      | Pavlova, Ltd.
Aniseed Syrup     | Exotic Liquids
Boston Crab Meat  | New England Seafood Cannery
Camembert Pierrot | Gai pâturage
Carnarvon Tigers  | Pavlova, Ltd.
```
    - The result of the query contains seventy-seven rows

2. Create a query to reveal how many products are in each category. List categories and number of products. Join the `products` and `categories` tables. Name result columns as `category` and `number_of_products`, respectively. Order the results by the number_of_products descending and then by the category name. Save the SQL query as `task-2.sql`.
    - The result of the query is the following.
```
    category       | number_of_products
    ---------------+--------------------
    Confections    |                 13
    Beverages      |                 12
    Seafood        |                 12
    Condiments     |                 12
    Dairy Products |                 10
    Grains/Cereals |                  7
    Meat/Poultry   |                  6
    Produce        |                  5
```
    - The result of your query contains eight rows

3. The Head of Sales wants to know which products are the ten worst performing. List product names and the total sum of the order values. Order the results by the `sum` column to start with the worst performing product. Save the SQL query as `task-3.sql`.
    - The result of the query is the following.
```
           product_name     | sum
  --------------------------+------
  Chocolade                 | 1369
  Geitost                   | 1648
  Genen Shouyu              | 1785
  Laughing Lumberjack Lager | 2397
  Longlife Tofu             | 2433
  Gravad lax                | 2688
  Aniseed Syrup             | 3044
  Filo Mix                  | 3233
  Louisiana Hot Spiced Okra | 3383
  Valkoinen suklaa          | 3438
```
    - The result of your query contains ten rows

4. Business developers want to know the list of countries with more than five customers. Save the SQL query as `task-4.sql`.
    - The result of the query is the following.
```
country | number_of_customers
--------+---------------------
USA     |                  13
France  |                  11
Germany |                  11
Brazil  |                   9
UK      |                   7
```
    - The result of your query contains five rows

5. Your CEO asks you to help her create her end-of-year presentation. Provide her with the numbers for the year 1997 broken down by months. Save the SQL query as `task-5.sql`.
    - The result of the query is the following.
```
year | month | order_count | revenue
-----+-------+-------------+---------
1997 |     1 |          85 |   61258
1997 |     2 |          79 |   38484
1997 |     3 |          77 |   38547
1997 |     4 |          81 |   53033
1997 |     5 |          96 |   53781
1997 |     6 |          76 |   36363
1997 |     7 |          77 |   51021
1997 |     8 |          84 |   47288
1997 |     9 |          95 |   55629
1997 |    10 |         106 |   66749
1997 |    11 |          89 |   43534
1997 |    12 |         114 |   71398
```
    - The result of your query contains twelve rows

6. Your colleague wants to manually check the printed order labels. You have to create a sheet with all US customers with less than 5 orders. Display the total number of orders made by them. Include a comma-separated list of the order numbers. Save the SQL query as `task-6.sql`.
    - The result of the query is the following.
```
          company_name            | orders |        order_ids
----------------------------------+--------+-------------------------
Lazy K Kountry Store              |      2 | 10482,10545
The Cracker Box                   |      3 | 10624,10775,11003
Trail's Head Gourmet Provisioners |      3 | 10574,10577,10822
Let's Stop N Shop                 |      4 | 10579,10719,10735,10884
The Big Cheese                    |      4 | 10310,10708,10805,10992
```
    - The result of the query contains five rows.

## General requirements

None

## Hints

- Use the SQL file that contains the sample data in the `data` folder by performing the following steps.
    - Create a new database for the project.    
    - Start `psql` in a terminal at the `data` folder of the project.
    - Connect to the new database, for example `\connect northwind`.
    - Execute the commands in the SQL file `\i northwind_data.sql`.
- Combine `product_price`, `quantity`, and `discount` when calculating the value of an order.


## Background materials

- <i class="far fa-exclamation"></i> [Working with more complex data](project/curriculum/materials/pages/sql/sql-working-with-data.md)
- [Northwind database](https://www.geeksengine.com/article/northwind.html)
- <i class="far fa-book-open"></i> [Short guide about psql](http://postgresguide.com/utilities/psql.html)
- <i class="far fa-book-open"></i> [PostgreSQL documentation page about psql](https://www.postgresql.org/docs/current/app-psql.html)

