mysql> SHOW TABLES; 
+-----------------------------+ 
| Tables_in_food_delivery_new | 
+-----------------------------+ 
| cart                       
| customer                    
| deliverystaff               
| item                       
| orders                      
| payment                    
| restaurant                 
 | 
 | 
| 
| 
| 
 | 
 | 
+-----------------------------+ 
7 rows in set (0.014 sec) 
mysql> desc customer; 
+------------+--------------+------+-----+---------+-------+ 
| Field     
 | Type         
| Null | Key | Default | Extra | 
+------------+--------------+------+-----+---------+-------+ 
| cus_id     
| varchar(5)   | NO   | PRI | NULL    |       
| cus_name   | varchar(50)  | YES  |     | NULL    |      
| cus_email  | varchar(50)  | YES  |     | NULL    |       
| cus_city   | varchar(20)  | YES  |    
| cus_gender | varchar(10)  | YES  |     | NULL    |       
| cus_mob    | bigint      
 | YES  |    
| cus_add    | varchar(100) | YES  |     | NULL    |       
+------------+--------------+------+-----+---------+-------+ 
7 rows in set (0.029 sec) 
mysql> select * from customer; 
| 
 | 
| 
 | NULL    |       
 | NULL    |      
| 
 | 
| 
| 
+--------+-----------+---------------------+----------+------------+------------+------------------+ 
| cus_id | cus_name  | cus_email          
 | cus_city | cus_gender | cus_mob    | cus_add          
+--------+-----------+---------------------+----------+------------+------------+------------------+ 
| c01    | Shree     | shree@gmail.com     | Kolhapur | Male       
| 
| 9876543210 | At post Kolhapur | 
| c02    | Nipun     | nipun@gmail.com     | Pune     | Male       
| 9876543211 | Shivaji Nagar    | 
| c03    | Mrunal    | mrunal@gmail.com    | Satara   | Female     | 9876543212 | Market Yard      | 
| c04    | Priti     | priti@gmail.com     | Karad    | Female     | 9876543213 | Bus Stand Road   | 
| c05    | Vaishnavi | vaishnavi@gmail.com | Sangli   | Female     | 9876543214 | Vishrambag      
| c06    | Sarthak   | sarthak@gmail.com   | Mumbai   | Male       
| c07    | Rohit     | rohit@gmail.com     | NULL     | NULL       
|      
| 9876543215 | Andheri         
 NULL | NULL             
+--------+-----------+---------------------+----------+------------+------------+------------------+ 
7 rows in set (0.012 sec) 
mysql> SELECT * FROM orders; 
| 
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+ 
 | 
 | 
| o_id | o_price | o_date     | o_time   | o_qua | o_status  | o_available | o_rating | cus_id | r_id | 
d_id | 
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+ 
| o01  |  250.00 | 2026-02-10 | 12:30:00 |     2 | Delivered | Yes        
| o02  |  500.00 | 2026-02-11 | 14:00:00 |     3 | Pending   | Yes         
| o03  |  300.00 | 2026-02-12 | 19:00:00 |     1 | Delivered | Yes        
| o04  |  450.00 | 2026-02-13 | 20:00:00 |     2 | Cancelled | No         
| o05  |  600.00 | 2026-02-14 | 21:00:00 |     4 | Delivered | Yes        
 |        
|        
 |        
 |        
 |        
5 | c01    | r01  | d01  | 
4 | c02    | r02  | d02  | 
5 | c03    | r03  | d03  | 
3 | c04    | r04  | d04  | 
5 | c05    | r05  | d05  | 
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+ 
5 rows in set (0.059 sec) 
mysql> desc cart; 
+---------------+------------+------+-----+---------+-------+ 
| Field        
 | Type      
 | Null | Key | Default | Extra | 
+---------------+------------+------+-----+---------+-------+ 
| cart_id      
| cus_id       
| i_id          
 | varchar(5) | NO   | PRI | NULL    |       
 | varchar(5) | YES  | MUL | NULL    |      
| varchar(5) | YES  | MUL | NULL    |       
| cart_quantity | int        
| YES  |    
| 
| 
 | NULL    |      
 | 
 | 
+---------------+------------+------+-----+---------+-------+ 
4 rows in set (0.017 sec) 
mysql> select * from cart; 
+---------+--------+------+---------------+ 
| cart_id | cus_id | i_id | cart_quantity | 
+---------+--------+------+---------------+ 
| crt01   | c01    | i01  |             
| crt02   | c02    | i02  |             
| crt03   | c03    | i03  |             
| crt04   | c04    | i04  |             
| crt05   | c05    | i05  |             
2 | 
1 | 
3 | 
2 | 
1 | 
+---------+--------+------+---------------+ 
5 rows in set (0.014 sec) 
mysql> desc orders; 
+-------------+---------------+------+-----+---------+-------+ 
| Field       
| Type          
| Null | Key | Default | Extra | 
+-------------+---------------+------+-----+---------+-------+ 
| o_id       
| o_price     
| o_date     
| o_time      
| o_qua      
 | varchar(5)    | NO   | PRI | NULL    |       
| decimal(10,2) | YES  |     | NULL    |      
 | date          
| time         
 | int          
| YES  |    
 | YES  |    
 | YES  |    
 | NULL    |       
| o_status    | varchar(20)   | YES  |     | NULL    |       
| o_available | varchar(5)    | YES  |     | NULL    |      
| o_rating    | int          
| cus_id     
 | YES  |    
 | NULL    |       
 | varchar(5)    | YES  | MUL | NULL    |      
| r_id        
| d_id       
| varchar(5)    | YES  | MUL | NULL    |       
 | varchar(5)    | YES  | MUL | NULL    |      
+-------------+---------------+------+-----+---------+-------+ 
| 
 | NULL    |      
 | NULL    |      
 | 
 | 
| 
 | 
| 
 | 
| 
 | 
| 
 | 
11 rows in set (0.032 sec) 
mysql> select * from orders; 
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+ 
| o_id | o_price | o_date     | o_time   | o_qua | o_status  | o_available | o_rating | cus_id | r_id | 
d_id | 
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+ 
| o01  |  250.00 | 2026-02-10 | 12:30:00 |     2 | Delivered | Yes        
| o02  |  500.00 | 2026-02-11 | 14:00:00 |     3 | Pending   | Yes         
| o03  |  300.00 | 2026-02-12 | 19:00:00 |     1 | Delivered | Yes        
| o04  |  450.00 | 2026-02-13 | 20:00:00 |     2 | Cancelled | No         
| o05  |  600.00 | 2026-02-14 | 21:00:00 |     4 | Delivered | Yes        
 |        
|        
 |        
 |        
 |        
5 | c01    | r01  | d01  | 
4 | c02    | r02  | d02  | 
5 | c03    | r03  | d03  | 
3 | c04    | r04  | d04  | 
5 | c05    | r05  | d05  | 
+------+---------+------------+----------+-------+-----------+-------------+----------+--------+------+------+ 
5 rows in set (0.010 sec) 
mysql> desc restaurant; 
+----------+--------------+------+-----+---------+-------+ 
| Field    | Type         
| Null | Key | Default | Extra | 
+----------+--------------+------+-----+---------+-------+ 
| r_id     | varchar(5)   | NO   | PRI | NULL    |       
| r_name   | varchar(50)  | YES  |     | NULL    |       
| r_add    | varchar(100) | YES  |     | NULL    |       
| r_timing | varchar(20)  | YES  |    
 | NULL    |       
| r_rating | decimal(2,1) | YES  |     | NULL    |       
| r_type   | varchar(20)  | YES  |     | NULL    |      
| r_city   | varchar(20)  | YES  |     | NULL    |       
+----------+--------------+------+-----+---------+-------+ 
7 rows in set (0.029 sec) 
mysql> select * from restaurant; 
| 
| 
| 
| 
| 
 | 
| 
+------+---------------+----------+-----------+----------+---------+----------+ 
| r_id | r_name       
 | r_add    | r_timing  | r_rating | r_type  | r_city   | 
+------+---------------+----------+-----------+----------+---------+----------+ 
| r01  | Spice Hub     | Kolhapur | 8am-10pm  |      4.2 | Veg     | Kolhapur | 
| r02  | Food Palace   | Pune     | 9am-11pm  |      4.5 | Non-Veg | Pune     | 
| r03  | Satara Treat  | Satara   | 10am-10pm |      
| r04  | Karad Biryani | Karad    | 11am-11pm |      
4.0 | Veg     
| Satara   | 
4.8 | Non-Veg | Karad    | 
| r05  | Mumbai Meals  | Mumbai   | 24 Hours  |      4.3 | Veg     | Mumbai   | 
+------+---------------+----------+-----------+----------+---------+----------+ 
5 rows in set (0.009 sec) 
mysql> desc deliverystaff; 
+-----------+-------------+------+-----+---------+-------+ 
| Field    
 | Type        
| Null | Key | Default | Extra | 
+-----------+-------------+------+-----+---------+-------+ 
| d_id     
 | varchar(5)  | NO   | PRI | NULL    |      
| d_name    | varchar(50) | YES  |     | NULL    |       
| d_mob     | bigint      | YES  |     | NULL    |       | 
| d_gender  | varchar(10) | YES  |     | NULL    |      
| d_email   | varchar(50) | YES  |     | NULL    |       
| d_vehicle | varchar(20) | YES  |     | NULL    |       
| d_zone    | varchar(20) | YES  |     | NULL    |       
+-----------+-------------+------+-----+---------+-------+ 
7 rows in set (0.018 sec) 
mysql> select * from deliverystaff; 
 | 
| 
 | 
| 
| 
| 
+------+--------+------------+----------+------------------+-----------+----------+ 
| d_id | d_name | d_mob      | d_gender | d_email          
| d_vehicle | d_zone   | 
+------+--------+------------+----------+------------------+-----------+----------+ 
| d01  | Ramesh | 9871111111 | Male     | ramesh@gmail.com | Bike      | Kolhapur | 
| d02  | Suresh | 9872222222 | Male     | suresh@gmail.com | Scooter   | Pune     | 
| d03  | Kiran  | 9873333333 | Male     | kiran@gmail.com  | Bike      | Satara   | 
| d04  | Anita  | 9874444444 | Female   | anita@gmail.com  | Scooter   | Karad    | 
| d05  | Rahul  | 9875555555 | Male     | rahul@gmail.com  | Bike      | Mumbai   | 
+------+--------+------------+----------+------------------+-----------+----------+ 
5 rows in set (0.010 sec) 
mysql> desc item; 
+---------------+---------------+------+-----+---------+-------+ 
| Field        
 | Type         
 | Null | Key | Default | Extra | 
+---------------+---------------+------+-----+---------+-------+ 
| i_id          
| i_name       
| i_price      
| varchar(5)    | NO   | PRI | NULL    |       
 | varchar(50)   | YES  |    
 | decimal(10,2) | YES  |    
| i_quantity    | int          
 | YES  |    
| i_category    | varchar(20)   | YES  |     | NULL    |      
| 
 | NULL    |       
 | NULL    |       
 | NULL    |      
 | 
| i_description | varchar(100)  | YES  |     | NULL    |      
| r_id          
| varchar(5)    | YES  | MUL | NULL    |      
+---------------+---------------+------+-----+---------+-------+ 
7 rows in set (0.030 sec) 
mysql> select * from item; 
| 
| 
 | 
 | 
 | 
+------+-----------------+---------+------------+------------+---------------+------+ 
| i_id | i_name         
 | i_price | i_quantity | i_category | i_description | r_id | 
+------+-----------------+---------+------------+------------+---------------+------+ 
| i01  | Paneer Tikka    |  180.00 |         
| i02  | Chicken Biryani |  250.00 |        
| i03  | Burger         
| i04  | Pizza          
| i05  | Veg Thali       
 |  
 |  
120.00 |        
300.00 |         
|  200.00 |        
50 | Veg        
| Starter      
 | r01  | 
 40 | Non-Veg    | Main Course   | r04  | 
 60 | FastFood   | Snack         
| r02  | 
30 | FastFood   | Cheese Pizza  | r02  | 
 25 | Veg        
| Full Meal     | r03  | 
+------+-----------------+---------+------------+------------+---------------+------+ 
5 rows in set (0.011 sec) 
mysql> desc payment; 
+----------+---------------+------+-----+---------+-------+ 
| Field    | Type         
 | Null | Key | Default | Extra | 
+----------+---------------+------+-----+---------+-------+ 
| p_id     | varchar(5)    | NO   | PRI | NULL    |       
| p_date   | date         
| p_time   | time          
 | YES  |     | NULL    |       | 
| YES  |    
 | NULL    |      
 | 
| p_amount | decimal(10,2) | YES  |     | NULL    |       
| p_mode   | varchar(20)   | YES  |     | NULL    |       
| p_status | varchar(20)   | YES  |     | NULL    |       
| o_id     | varchar(5)    | YES  | MUL | NULL    |       
+----------+---------------+------+-----+---------+-------+ 
7 rows in set (0.031 sec) 
mysql> select * from payment; 
| 
| 
| 
| 
| 
+------+------------+----------+----------+--------+----------+------+ 
| p_id | p_date     | p_time   | p_amount | p_mode | p_status | o_id | 
+------+------------+----------+----------+--------+----------+------+ 
| p01  | 2026-02-10 | 12:40:00 |   250.00 | UPI    | Success  | o01  | 
| p02  | 2026-02-11 | 14:10:00 |   500.00 | Card   | Pending  | o02  | 
| p03  | 2026-02-12 | 19:10:00 |   300.00 | Cash   | Success  | o03  | 
| p04  | 2026-02-13 | 20:10:00 |   450.00 | UPI    | Failed   | o04  | 
| p05  | 2026-02-14 | 21:10:00 |   600.00 | Card   | Success  | o05  | 
+------+------------+----------+----------+--------+----------+------+ 
5 rows in set (0.018 sec) 
mysql> 