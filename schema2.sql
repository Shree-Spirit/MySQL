Enter password: *********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 9.6.0 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use food_delivery_new;
Database changed
mysql> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| food_delivery      |
| food_delivery_new  |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.640 sec)

mysql> select * from customer;
+--------+-----------+---------------------+----------+------------+------------+------------------+
| cus_id | cus_name  | cus_email           | cus_city | cus_gender | cus_mob    | cus_add          |
+--------+-----------+---------------------+----------+------------+------------+------------------+
| c01    | Shree     | shree@gmail.com     | Kolhapur | Male       | 9876543210 | At post Kolhapur |
| c02    | Nipun     | nipun@gmail.com     | Pune     | Male       | 9876543211 | Shivaji Nagar    |
| c03    | Mrunal    | mrunal@gmail.com    | Satara   | Female     | 9876543212 | Market Yard      |
| c04    | Priti     | priti@gmail.com     | Karad    | Female     | 9876543213 | Bus Stand Road   |
| c05    | Vaishnavi | vaishnavi@gmail.com | Sangli   | Female     | 9876543214 | Vishrambag       |
| c06    | Sarthak   | sarthak@gmail.com   | Mumbai   | Male       | 9876543215 | Andheri          |
| c07    | Rohit     | rohit@gmail.com     | NULL     | NULL       |       NULL | NULL             |
+--------+-----------+---------------------+----------+------------+------------+------------------+
7 rows in set (0.211 sec)

mysql> select * from restaurant;
+------+---------------+----------+-----------+----------+---------+----------+
| r_id | r_name        | r_add    | r_timing  | r_rating | r_type  | r_city   |
+------+---------------+----------+-----------+----------+---------+----------+
| r01  | Spice Hub     | Kolhapur | 8am-10pm  |      4.2 | Veg     | Kolhapur |
| r02  | Food Palace   | Pune     | 9am-11pm  |      4.5 | Non-Veg | Pune     |
| r03  | Satara Treat  | Satara   | 10am-10pm |      4.0 | Veg     | Satara   |
| r04  | Karad Biryani | Karad    | 11am-11pm |      4.8 | Non-Veg | Karad    |
| r05  | Mumbai Meals  | Mumbai   | 24 Hours  |      4.3 | Veg     | Mumbai   |
+------+---------------+----------+-----------+----------+---------+----------+
5 rows in set (0.179 sec)

mysql> select * from item;
+------+-----------------+---------+------------+------------+---------------+------+
| i_id | i_name          | i_price | i_quantity | i_category | i_description | r_id |
+------+-----------------+---------+------------+------------+---------------+------+
| i01  | Paneer Tikka    |  180.00 |         50 | Veg        | Starter       | r01  |
| i02  | Chicken Biryani |  250.00 |         40 | Non-Veg    | Main Course   | r04  |
| i03  | Burger          |  120.00 |         60 | FastFood   | Snack         | r02  |
| i04  | Pizza           |  300.00 |         30 | FastFood   | Cheese Pizza  | r02  |
| i05  | Veg Thali       |  200.00 |         25 | Veg        | Full Meal     | r03  |
+------+-----------------+---------+------------+------------+---------------+------+
5 rows in set (0.102 sec)

mysql> select * from customer where cus_city="?";
Empty set (0.099 sec)

mysql> select * from customer where cus_city="Pune";
+--------+----------+-----------------+----------+------------+------------+---------------+
| cus_id | cus_name | cus_email       | cus_city | cus_gender | cus_mob    | cus_add       |
+--------+----------+-----------------+----------+------------+------------+---------------+
| c02    | Nipun    | nipun@gmail.com | Pune     | Male       | 9876543211 | Shivaji Nagar |
+--------+----------+-----------------+----------+------------+------------+---------------+
1 row in set (0.014 sec)

mysql> select * from customer where where r_rating>3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where r_rating>3' at line 1
mysql> select * from customer where r_rating>3;
ERROR 1054 (42S22): Unknown column 'r_rating' in 'where clause'
mysql> select * from customer where r_rating>3;
ERROR 1054 (42S22): Unknown column 'r_rating' in 'where clause'
mysql> select * from customer where r_rating > 3;
ERROR 1054 (42S22): Unknown column 'r_rating' in 'where clause'
mysql>  SELECT *
    -> FROM restaurant
    -> WHERE r_rating > 3;
+------+---------------+----------+-----------+----------+---------+----------+
| r_id | r_name        | r_add    | r_timing  | r_rating | r_type  | r_city   |
+------+---------------+----------+-----------+----------+---------+----------+
| r01  | Spice Hub     | Kolhapur | 8am-10pm  |      4.2 | Veg     | Kolhapur |
| r02  | Food Palace   | Pune     | 9am-11pm  |      4.5 | Non-Veg | Pune     |
| r03  | Satara Treat  | Satara   | 10am-10pm |      4.0 | Veg     | Satara   |
| r04  | Karad Biryani | Karad    | 11am-11pm |      4.8 | Non-Veg | Karad    |
| r05  | Mumbai Meals  | Mumbai   | 24 Hours  |      4.3 | Veg     | Mumbai   |
+------+---------------+----------+-----------+----------+---------+----------+
5 rows in set (0.021 sec)

mysql> select * from restaurant r_id,r_name where r_rating>3;
ERROR 1146 (42S02): Table 'food_delivery_new.r_name' doesn't exist
mysql> select r_id,r_name * from restaurant r_id,r_name where r_rating>3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from restaurant r_id,r_name where r_rating>3' at line 1
mysql> select r_id,r_name from restaurant r_id,r_name where r_rating>3;
ERROR 1146 (42S02): Table 'food_delivery_new.r_name' doesn't exist
mysql> select r_id,r_name from restaurant where r_rating>3;
+------+---------------+
| r_id | r_name        |
+------+---------------+
| r01  | Spice Hub     |
| r02  | Food Palace   |
| r03  | Satara Treat  |
| r04  | Karad Biryani |
| r05  | Mumbai Meals  |
+------+---------------+
5 rows in set (0.010 sec)

mysql> select * from delivery_staff;
ERROR 1146 (42S02): Table 'food_delivery_new.delivery_staff' doesn't exist
mysql> show tables;
+-----------------------------+
| Tables_in_food_delivery_new |
+-----------------------------+
| cart                        |
| customer                    |
| deliverystaff               |
| item                        |
| orders                      |
| payment                     |
| restaurant                  |
+-----------------------------+
7 rows in set (0.272 sec)

mysql> select * from deliverystaff;
+------+--------+------------+----------+------------------+-----------+----------+
| d_id | d_name | d_mob      | d_gender | d_email          | d_vehicle | d_zone   |
+------+--------+------------+----------+------------------+-----------+----------+
| d01  | Ramesh | 9871111111 | Male     | ramesh@gmail.com | Bike      | Kolhapur |
| d02  | Suresh | 9872222222 | Male     | suresh@gmail.com | Scooter   | Pune     |
| d03  | Kiran  | 9873333333 | Male     | kiran@gmail.com  | Bike      | Satara   |
| d04  | Anita  | 9874444444 | Female   | anita@gmail.com  | Scooter   | Karad    |
| d05  | Rahul  | 9875555555 | Male     | rahul@gmail.com  | Bike      | Mumbai   |
+------+--------+------------+----------+------------------+-----------+----------+
5 rows in set (0.088 sec)

mysql> clear;
mysql> select d_name from deliverystaff where d_name="R";
Empty set (0.015 sec)

mysql> select d_name from deliverystaff where d_name="R%";
Empty set (0.011 sec)

mysql> select d_name from deliverystaff like d_name="R%";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like d_name="R%"' at line 1
mysql> select d_name from deliverystaff like "R%";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like "R%"' at line 1
mysql> select d_name from deliverystaff like R%;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like R%' at line 1
mysql> select d_name from deliverystaff like 'R%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like 'R%'' at line 1
mysql> select d_name from deliverystaff like 'R%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like 'R%'' at line 1
mysql> select * from deliverysatff
    -> where d_name like "R%";
ERROR 1146 (42S02): Table 'food_delivery_new.deliverysatff' doesn't exist
mysql> select * from deliverystaff
    -> where d_name like "R%";
+------+--------+------------+----------+------------------+-----------+----------+
| d_id | d_name | d_mob      | d_gender | d_email          | d_vehicle | d_zone   |
+------+--------+------------+----------+------------------+-----------+----------+
| d01  | Ramesh | 9871111111 | Male     | ramesh@gmail.com | Bike      | Kolhapur |
| d05  | Rahul  | 9875555555 | Male     | rahul@gmail.com  | Bike      | Mumbai   |
+------+--------+------------+----------+------------------+-----------+----------+
2 rows in set (0.084 sec)

mysql> select * from orders;
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+
| o_id | o_price | o_date     | o_time   | o_qua | o_status  | o_available | o_rating | cus_id | r_id | d_id |
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+
| o01  |  250.00 | 2026-02-10 | 12:30:00 |     2 | Delivered | Yes         |        5 | c01    | r01  | d01  |
| o02  |  500.00 | 2026-02-11 | 14:00:00 |     3 | Pending   | Yes         |        4 | c02    | r02  | d02  |
| o03  |  300.00 | 2026-02-12 | 19:00:00 |     1 | Delivered | Yes         |        5 | c03    | r03  | d03  |
| o04  |  450.00 | 2026-02-13 | 20:00:00 |     2 | Cancelled | No          |        3 | c04    | r04  | d04  |
| o05  |  600.00 | 2026-02-14 | 21:00:00 |     4 | Delivered | Yes         |        5 | c05    | r05  | d05  |
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+
5 rows in set (0.062 sec)

mysql> select o_id from orders where o_status="Delivered";
+------+
| o_id |
+------+
| o01  |
| o03  |
| o05  |
+------+
3 rows in set (0.010 sec)

mysql> select o_id from orders where o_status="Delivered" and o_date="2026-02-10";
+------+
| o_id |
+------+
| o01  |
+------+
1 row in set (0.100 sec)

mysql> select * from payment;
+------+------------+----------+----------+--------+----------+------+
| p_id | p_date     | p_time   | p_amount | p_mode | p_status | o_id |
+------+------------+----------+----------+--------+----------+------+
| p01  | 2026-02-10 | 12:40:00 |   250.00 | UPI    | Success  | o01  |
| p02  | 2026-02-11 | 14:10:00 |   500.00 | Card   | Pending  | o02  |
| p03  | 2026-02-12 | 19:10:00 |   300.00 | Cash   | Success  | o03  |
| p04  | 2026-02-13 | 20:10:00 |   450.00 | UPI    | Failed   | o04  |
| p05  | 2026-02-14 | 21:10:00 |   600.00 | Card   | Success  | o05  |
+------+------------+----------+----------+--------+----------+------+
5 rows in set (0.112 sec)

mysql> select * from payment where p_amount like "250.00" and "600.00";
+------+------------+----------+----------+--------+----------+------+
| p_id | p_date     | p_time   | p_amount | p_mode | p_status | o_id |
+------+------------+----------+----------+--------+----------+------+
| p01  | 2026-02-10 | 12:40:00 |   250.00 | UPI    | Success  | o01  |
+------+------------+----------+----------+--------+----------+------+
1 row in set (0.087 sec)

mysql> select * from item;
+------+-----------------+---------+------------+------------+---------------+------+
| i_id | i_name          | i_price | i_quantity | i_category | i_description | r_id |
+------+-----------------+---------+------------+------------+---------------+------+
| i01  | Paneer Tikka    |  180.00 |         50 | Veg        | Starter       | r01  |
| i02  | Chicken Biryani |  250.00 |         40 | Non-Veg    | Main Course   | r04  |
| i03  | Burger          |  120.00 |         60 | FastFood   | Snack         | r02  |
| i04  | Pizza           |  300.00 |         30 | FastFood   | Cheese Pizza  | r02  |
| i05  | Veg Thali       |  200.00 |         25 | Veg        | Full Meal     | r03  |
+------+-----------------+---------+------------+------------+---------------+------+
5 rows in set (0.017 sec)

mysql> select * from item i_category like "Veg" and i_price='200.00';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like "Veg" and i_price='200.00'' at line 1
mysql> select * from item i_category like "Veg" and where i_price='200.00';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like "Veg" and where i_price='200.00'' at line 1
mysql> select * from item where i_category="Veg" and i_price=<10000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '=<10000' at line 1
mysql> select * from item where i_category="Veg" and i_price<10000;
+------+--------------+---------+------------+------------+---------------+------+
| i_id | i_name       | i_price | i_quantity | i_category | i_description | r_id |
+------+--------------+---------+------------+------------+---------------+------+
| i01  | Paneer Tikka |  180.00 |         50 | Veg        | Starter       | r01  |
| i05  | Veg Thali    |  200.00 |         25 | Veg        | Full Meal     | r03  |
+------+--------------+---------+------------+------------+---------------+------+
2 rows in set (0.013 sec)

mysql> select * from order;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order' at line 1
mysql> select * from orders;
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+
| o_id | o_price | o_date     | o_time   | o_qua | o_status  | o_available | o_rating | cus_id | r_id | d_id |
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+
| o01  |  250.00 | 2026-02-10 | 12:30:00 |     2 | Delivered | Yes         |        5 | c01    | r01  | d01  |
| o02  |  500.00 | 2026-02-11 | 14:00:00 |     3 | Pending   | Yes         |        4 | c02    | r02  | d02  |
| o03  |  300.00 | 2026-02-12 | 19:00:00 |     1 | Delivered | Yes         |        5 | c03    | r03  | d03  |
| o04  |  450.00 | 2026-02-13 | 20:00:00 |     2 | Cancelled | No          |        3 | c04    | r04  | d04  |
| o05  |  600.00 | 2026-02-14 | 21:00:00 |     4 | Delivered | Yes         |        5 | c05    | r05  | d05  |
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+
5 rows in set (0.009 sec)

mysql> select c_name from customer where o_date='2026-02-10';
ERROR 1054 (42S22): Unknown column 'c_name' in 'field list'
mysql> select cus_name from customer where o_date='2026-02-10';
ERROR 1054 (42S22): Unknown column 'o_date' in 'where clause'
mysql>