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
7 rows in set (0.285 sec)

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
7 rows in set (0.766 sec)

mysql> select * from ^C
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
5 rows in set (0.098 sec)

mysql> select * from deliverystaffitem;
ERROR 1146 (42S02): Table 'food_delivery_new.deliverystaffitem' doesn't exist
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
5 rows in set (0.020 sec)

mysql> select * from deliverystaff;orders
+------+--------+------------+----------+------------------+-----------+----------+
| d_id | d_name | d_mob      | d_gender | d_email          | d_vehicle | d_zone   |
+------+--------+------------+----------+------------------+-----------+----------+
| d01  | Ramesh | 9871111111 | Male     | ramesh@gmail.com | Bike      | Kolhapur |
| d02  | Suresh | 9872222222 | Male     | suresh@gmail.com | Scooter   | Pune     |
| d03  | Kiran  | 9873333333 | Male     | kiran@gmail.com  | Bike      | Satara   |
| d04  | Anita  | 9874444444 | Female   | anita@gmail.com  | Scooter   | Karad    |
| d05  | Rahul  | 9875555555 | Male     | rahul@gmail.com  | Bike      | Mumbai   |
+------+--------+------------+----------+------------------+-----------+----------+
5 rows in set (0.018 sec)

    -> select * from payment;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orders
select * from payment' at line 1
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
5 rows in set (0.110 sec)

mysql> select * from restaurant;
+------+---------------+----------+-----------+----------+---------+----------+
| r_id | r_name        | r_add    | r_timing  | r_rating | r_type  | r_city   |
+------+---------------+----------+-----------+----------+---------+----------+
| r01  | Spice Hub     | Kolhapur | 8am-10pm  |      4.2 | Veg     | Kolhapur |
| r02  | Food Palace   | Pune     | 9am-11pm  |      4.5 | Non-Veg | Pune     |
| r03  | Satara Treat  | Satara   | 10am-10pm |      4.0 | Veg     | Satara   |
| r04  | Karad Biryani | Karad    | 11am-11pm |      4.8 | Non-Veg | Karad    |
| r05  | Mumbai Meals  | Mumbai   | 24 Hours  |      4.3 | Veg     | Mumbai   |
+------+---------------+----------+-----------+----------+---------+----------

1 =====>
mysql> SELECT * FROM customer INNER JOIN orders ON customer.cus_id = orders.cus_id WHERE orders.o_date = "2026-02-10";
+--------+----------+-----------------+----------+------------+------------+------------------+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+
| cus_id | cus_name | cus_email       | cus_city | cus_gender | cus_mob    | cus_add          | o_id | o_price | o_date     | o_time   | o_qua | o_status  | o_available | o_rating | cus_id | r_id | d_id |
+--------+----------+-----------------+----------+------------+------------+------------------+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+
| c01    | Shree    | shree@gmail.com | Kolhapur | Male       | 9876543210 | At post Kolhapur | o01  |  250.00 | 2026-02-10 | 12:30:00 |     2 | Delivered | Yes         |        5 | c01    | r01  | d01  |
+--------+----------+-----------------+----------+------------+------------+------------------+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+

2 ======>
mysql> SELECT * FROM orders INNER JOIN customer ON customer.cus_id = orders.cus_id WHERE customer.cus_city = "Kolhapur";
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+--------+----------+-----------------+----------+------------+------------+------------------+
| o_id | o_price | o_date     | o_time   | o_qua | o_status  | o_available | o_rating | cus_id | r_id | d_id | cus_id | cus_name | cus_email       | cus_city | cus_gender | cus_mob    | cus_add          |
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+--------+----------+-----------------+----------+------------+------------+------------------+
| o01  |  250.00 | 2026-02-10 | 12:30:00 |     2 | Delivered | Yes         |        5 | c01    | r01  | d01  | c01    | Shree    | shree@gmail.com | Kolhapur | Male       | 9876543210 | At post Kolhapur |
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+--------+----------+-----------------+----------+------------+------------+------------------+
3 =====>
mysql> SELECT customer.cus_id,customer.cus_name,payment.p_status FROM customer INNER JOIN orders ON customer.cus_id = orders.cus_id INNER JOIN payment ON orders.o_id = payment.o_id WHERE payment.p_amount>100 AND payment.p_amount<400;
+--------+----------+----------+
| cus_id | cus_name | p_status |
+--------+----------+----------+
| c01    | Shree    | Success  |
| c03    | Mrunal   | Success  |
+--------+----------+----------+

4 =====>
mysql> SELECT * FROM restaurant INNER JOIN item ON restaurant.r_id = item.r_id WHERE item.i_name = "Paneer Tikka" AND item.i_price>100 AND item.i_price<200;
+------+-----------+----------+----------+----------+--------+----------+------+--------------+---------+------------+------------+---------------+------+
| r_id | r_name    | r_add    | r_timing | r_rating | r_type | r_city   | i_id | i_name       | i_price | i_quantity | i_category | i_description | r_id |
+------+-----------+----------+----------+----------+--------+----------+------+--------------+---------+------------+------------+---------------+------+
| r01  | Spice Hub | Kolhapur | 8am-10pm |      4.2 | Veg    | Kolhapur | i01  | Paneer Tikka |  180.00 |         50 | Veg        | Starter       | r01  |
+------+-----------+----------+----------+----------+--------+----------+------+--------------+---------+------------+------------+---------------+------+

5 =====>
mysql> SELECT * FROM orders INNER JOIN customer ON customer.cus_id = orders.cus_id INNER JOIN restaurant ON restaurant.r_id = orders.r_id INNER JOIN item ON restaurant.r_id = item.r_id WHERE customer.cus_city="Pune" AND item.i_name = "Burger";
+------+---------+------------+----------+-------+----------+-------------+----------+--------+------+------+------+--------+----------+-----------------+----------+------------+------------+---------------+------+-------------+-------+----------+----------+---------+--------+------+--------+---------+------------+------------+---------------+------+
| o_id | o_price | o_date     | o_time   | o_qua | o_status | o_available | o_rating | cus_id | r_id | d_id | i_id | cus_id | cus_name | cus_email       | cus_city | cus_gender | cus_mob    | cus_add       | r_id | r_name      | r_add | r_timing | r_rating | r_type  | r_city | i_id | i_name | i_price | i_quantity | i_category | i_description | r_id |
+------+---------+------------+----------+-------+----------+-------------+----------+--------+------+------+------+--------+----------+-----------------+----------+------------+------------+---------------+------+-------------+-------+----------+----------+---------+--------+------+--------+---------+------------+------------+---------------+------+
| o02  |  500.00 | 2026-02-11 | 14:00:00 |     3 | Pending  | Yes         |        4 | c02    | r02  | d02  | i04  | c02    | Nipun    | nipun@gmail.com | Pune     | Male       | 9876543211 | Shivaji Nagar | r02  | Food Palace | Pune  | 9am-11pm |      4.5 | Non-Veg | Pune   | i03  | Burger |  120.00 |         60 | FastFood   | Snack         | r02  |
+------+---------+------------+----------+-------+----------+-------------+----------+--------+------+------+------+--------+----------+-----------------+----------+------------+------------+---------------+------+-------------+-------+----------+----------+---------+--------+------+--------+---------+------------+------------+---------------+------+

6 ====>
mysql> SELECT customer.cus_id,customer.cus_name FROM customer INNER JOIN orders ON customer.cus_id = orders.cus_id WHERE orders.o_qua>1;
+--------+-----------+
| cus_id | cus_name  |
+--------+-----------+
| c01    | Shree     |
| c02    | Nipun     |
| c04    | Priti     |
| c05    | Vaishnavi |
+--------+-----------+
4 rows in set (0.178 sec)

7 ====>
mysql> SELECT * FROM deliverystaff INNER JOIN orders ON deliverystaff.d_id=orders.d_id WHERE orders.o_date="2026-02-14";
+------+--------+------------+----------+-----------------+-----------+--------+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+
| d_id | d_name | d_mob      | d_gender | d_email         | d_vehicle | d_zone | o_id | o_price | o_date     | o_time   | o_qua | o_status  | o_available | o_rating | cus_id | r_id | d_id |
+------+--------+------------+----------+-----------------+-----------+--------+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+
| d05  | Rahul  | 9875555555 | Male     | rahul@gmail.com | Bike      | Mumbai | o05  |  600.00 | 2026-02-14 | 21:00:00 |     4 | Delivered | Yes         |        5 | c05    | r05  | d05  |
+------+--------+------------+----------+-----------------+-----------+--------+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+
1 row in set (0.109 sec)


8 ====>

mysql> SELECT c.cus_name FROM customer c INNER JOIN orders ON c.cus_id = orders.cus_id INNER JOIN item i ON orders.i_id=i.i_id WHERE i.i_category="FastFood";
+-----------+
| cus_name  |
+-----------+
| Shree     |
| Nipun     |
| Vaishnavi |
+-----------+
3 rows in set (0.018 sec)

9 ====>

mysql> SELECT o.* FROM orders o INNER JOIN item i ON o.i_id=i.i_id INNER JOIN restaurant r ON i.r_id = r.r_id WHERE r.r_rating>3;
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+------+
| o_id | o_price | o_date     | o_time   | o_qua | o_status  | o_available | o_rating | cus_id | r_id | d_id | i_id |
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+------+
| o01  |  250.00 | 2026-02-10 | 12:30:00 |     2 | Delivered | Yes         |        5 | c01    | r01  | d01  | i03  |
| o02  |  500.00 | 2026-02-11 | 14:00:00 |     3 | Pending   | Yes         |        4 | c02    | r02  | d02  | i04  |
| o03  |  300.00 | 2026-02-12 | 19:00:00 |     1 | Delivered | Yes         |        5 | c03    | r03  | d03  | i01  |
| o04  |  450.00 | 2026-02-13 | 20:00:00 |     2 | Cancelled | No          |        3 | c04    | r04  | d04  | i02  |
| o05  |  600.00 | 2026-02-14 | 21:00:00 |     4 | Delivered | Yes         |        5 | c05    | r05  | d05  | i03  |
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+------+
5 rows in set (0.092 sec)

10 =====>

mysql> SELECT c.* FROM customer c INNER JOIN orders o ON c.cus_id = o.cus_id INNER JOIN payment p ON o.o_id=p.o_id WHERE c.cus_name LIKE "s%" AND o.o_price=250.00;
+--------+----------+-----------------+----------+------------+------------+------------------+
| cus_id | cus_name | cus_email       | cus_city | cus_gender | cus_mob    | cus_add          |
+--------+----------+-----------------+----------+------------+------------+------------------+
| c01    | Shree    | shree@gmail.com | Kolhapur | Male       | 9876543210 | At post Kolhapur |
+--------+----------+-----------------+----------+------------+------------+------------------+
1 row in set (0.026 sec)

