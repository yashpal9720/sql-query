create schema mobileanalysis;
 use mobileanalysis;
 select * from mobile;

-- check moblie featues and prices 
select phone_name, price from mobile;

-- Find out the price of 5 most expensive phones 
select * from mobile
order by price desc 
limit 5;

-- Find out  the price of 5 most cheatpest phones
select * from mobile
order by price asc 
limit 5;

-- List of top 5 samsung phones with price and all features 
select * from mobile where brands = "samsung"
order by price  desc 
limit 5;

-- Must have android phone list then top 5 high price android phones 
select * from mobile where operating_system_type = "Android" 
order by  price desc 
limit 5;

-- Must have android phone list then top 5 lower price android phones 
select * from mobile where operating_system_type = "Android" 
order by  price asc 
limit 5; 

-- Must have IOS phone list then top 5  high price IOS phones 
select * from mobile where operating_system_type = "IOS"
order by price  desc
limit 5 ;

-- Must have IOS phone list then top 5 lower price IOS phones 
select * from mobile where operating_system_type = "IOS"
order by price  asc
limit 5 ;

-- Write a query  which phone support  5g and also top 5  phone with 5g  support
select * from mobile where 5g_availability = "yes"
order by price desc 
limit 5;

-- Total price of all mobile is to be  found with brand name 
select brands, sum(price) from  mobile group by brands;

--