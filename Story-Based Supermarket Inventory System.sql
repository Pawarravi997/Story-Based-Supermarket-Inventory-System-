create database supermarket_db;
use supermarket_db;
Create table  products (
 product_id INT PRIMARY KEY, 
 product_name VARCHAR(50), 
 category VARCHAR(30), 
 brand VARCHAR(30),
 price DECIMAL(10,2), 
 quantity INT, 
 supplier_city VARCHAR(30),
 status VARCHAR(20));
 
alter table products add column discount float;
alter table products add column expiry_date date;

INSERT INTO products (product_id, product_name, category, brand, price, quantity, supplier_city, status) VALUES
(101, 'India Gate Rice', 'Groceries', 'India Gate', 650.00, 80, 'Pune', 'Available'),
(102, 'Aashirvaad Atta', 'Groceries', 'Aashirvaad', 520.00, 40, 'Pune', 'Available'),
(103, 'Parle-G Biscuits', 'Snacks', 'Parle', 65.00, 150, 'Mumbai', 'Available'),
(104, 'Britannia Bread', 'Bakery', 'Britannia', 45.00, 100, 'Pune', 'Available'),
(105, 'Amul Milk', 'Dairy', 'Amul', 65.00, 35, 'Nashik', 'Available'),
(106, 'Tata Tea', 'Beverages', 'Tata', 350.00, 100, 'Pune', 'Available'),
(107, 'Nescafe Coffee', 'Beverages', 'Nescafe', 45.00, 280, 'Mumbai', 'Available'),
(108, 'Dove Soap', 'Personal Care', 'Dove', 25.00, 85, 'Pune', 'Available'),
(109, 'Clinic Plus Shampoo', 'Personal Care', 'Clinic Plus', 190.00, 70, 'Nashik', 'Available'),
(110, 'Colgate Toothpaste', 'Personal Care', 'Colgate', 40.00, 120, 'Mumbai', 'Available'),
(111, 'Fortune Oil', 'Groceries', 'Fortune', 175.00, 55, 'Pune', 'Available'),
(112, 'KitKat Chocolate', 'Snacks', 'Nestle', 90.00, 50, 'Mumbai', 'Available'),
(113, 'Coca Cola', 'Beverages', 'Coca Cola', 60.00, 120, 'Pune', 'Available'),
(114, 'Maggi Noodles', 'Groceries', 'Nestle', 75.00, 15, 'Nashik', 'Available'),
(115, 'Surf Excel', 'Household', 'Surf Excel', 220.00, 200, 'Pune', 'Available'),
(116, 'Lifebuoy Soap', 'Personal Care', 'Lifebuoy', 18.00, 100, 'Mumbai', 'Available'),
(117, 'Kissan Jam', 'Groceries', 'Kissan', 55.00, 0, 'Nashik', 'Out of Stock'),
(118, 'Red Label Tea', 'Beverages', 'Brooke Bond', 180.00, 30, 'Pune', 'Available'),
(119, 'Harpic Cleaner', 'Household', 'Harpic', 240.00, 20, 'Mumbai', 'Available'),
(120, 'Cadbury Dairy Milk', 'Snacks', 'Cadbury', 160.00, 100, 'Nashik', 'Available');

update products set price=price+100 where product_name='India Gate Rice';
update products set discount=price*0.1 where product_name='Cadbury Dairy Milk';
update products set quantity=quantity+50 where product_name='Kissan Jam';
update products set status='Out of Stock' where product_id=114;
update products set discount=price*0.2 where supplier_city='Pune';
update products set price=price+50 where brand='Kissan';
update products set quantity=quantity+100 where product_name='India Gate Rice';
update products set supplier_city='Latur' where product_name='Kissan Jam';
update products set status='Available' where quantity=0;
update products set expiry_date='2025-1-15' where product_name='India Gate Rice';
 
 
delete from products where product_id=108;
delete from products where brand='Dove';
delete from products where product_name='Maggi Noodle' and supplier_city='Nashik'  ;
delete from products where status='Out of Stock';


select product_name from products where price>50;
select  product_name from products where price<100;
select  product_name from products where quantity<20;
select  product_name from products where quantity>100;
select  product_name from products where category='Groceries';
select  product_name from products where brand='Coca Cola';
select  product_name from products where supplier_city='Pune';
select  product_name from products where status='Out of Stock';
select product_name from products where price>100 or price<100;
select product_name from products where quantity<10 and  status ='Available';
select product_name from products where supplier_city='Pune' or supplier_city='Mumbai';
select  product_name from products where supplier_city!='Pune';
select  product_name from products where category!='Personal Care';
select product_name from products where product_id=110;

alter table products add column supplier_phone varchar(45);
alter table products add column stock_date  varchar(45);
alter table products change column  product_name product_name  VARCHAR(100);
alter table products modify column  product_name  VARCHAR(100);
alter table products modify column  brand  VARCHAR(50);
alter table products modify column  quantity  bigint;
alter table products rename column  supplier_city  to city;
 alter table products add column category_code int;
  alter table products add column rating DECIMAL(3,1);
    alter table products drop column rating;
    alter table products drop column category_code;
    
    
    # Increase the price of all products in the Snacks category by 10.
    update products set price=price+20 where  category="snacks"; 
     # 2. Set the quantity of product_id 105 to 150.
     update products set quantity=150 where product_id=105;
    #  3. Change the status of product_id 116 to Available
    update products set status="Available" where product_id=116;
	 # 4.Increase the quantity of all Pune-supplied products by 20. 
     update products set quantity=quantity+20 where city="pune";
    # 5. Reduce the price of all products costing more than 500 by 50.
    update products set price=price-50 where price>500;
    # 6. Change the brand of product_id 119 to a new brand name. 
    update  products set brand="tke king" where product_id=119;
	#  7. Set a 15% discount for products whose price is greater than 200.
    update products set price=15/100 where price<200;
    
--     8. Change the supplier city of product_id 110 to Mumbai. 
--     9. Increase the price of all products from Mumbai by 25.
--     10. Set status to Out of Stock for products whose quantity is less than 5.
    update products set city='Mumbai' where product_id =110;
      update products set price=price+25  where city='Mumbai';
      update products set status='Out of Stock'  where quantity<5;
      
--       1. Delete product_id 120. 
--       2. Delete all products belonging to the Cadbury brand. 
--       3. Delete all products from Nashik.
--       4. Delete products whose price is less than 20. 
--       5. Delete products whose quantity is 0.
--       6. Delete all products in the Household category.
--       7. Delete product_id 103 using its primary key. 
--       8. Delete all products supplied from Mumbai.
--       9. Delete all products with status Out of Stock.
--       10. Delete all remaining products belonging to a particular brand of your choice.

delete from products where product_id=120;
delete from products where city='Nashik';
delete from products where price<20  ;
delete from products where quantity=0;
delete from products where category='Household';
delete from products where product_id=103;
delete from products where city='Mumbai';
delete from products where status='Out of Stock';
    
    

  










