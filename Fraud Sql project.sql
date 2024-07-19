create database fraud;
show databases;
use fraud;
create table card_holder(id_c_h int primary key,name varchar(30));
desc card_holder;
select * from card_holder;

create table credit_card(card varchar(20) primary key,id_c_h int, foreign key(id_c_h) references card_holder(id_c_h));
 desc credit_card;
 select * from credit_card;

 create table merchant_category(id_m_c int primary key,name varchar(20));
 desc merchant_category;
  select * from merchant_category;

 create table merchant(id_m int primary key,name varchar(20),id_m_c int, foreign key(id_m_c) references merchant_category(id_m_c));
 desc merchant;
select * from merchant;

 create table transaction(id int,date date,amount decimal(10,0),card varchar(20),id_m int,foreign key(card) references credit_card(card),foreign key(id_m) references merchant(id_m));
 desc transaction;
 
select * from transaction;
-- 1 change data type of amount in transaction table
alter table transaction modify amount int;
-- 2 Find card_holder name start with ‘S’
select * from card_holder where name like "S%";

-- 3 Display Transaction sorted by their Amount in descending order
select * from transaction order by amount desc;

-- 4 Calculate the total number of card_holder
select count(*) as total_card_holder from card_holder;

-- 5 Find the maximum amount in Transactions
select max(amount) as cr_transaction from transaction;

-- 6 Find the minmun amount in Transactions
select min(amount) as cr_transaction from transaction;

-- 7 Write a query to fetch merchant_category by using distinct in table merchant.
select id_m_c,name from merchant;

-- 8 command to fetch with or operator
select * from merchant where id_m=5 or id_m_c=2;

-- 9 command for count of transactions
select count(*) AS total_transactions from transaction;

-- 10 command to fetch specific card in transaction table
select * from transaction where card = "5.14E+15";


-- 11 command to fetch specific amont>800
select * from transaction where amount>800;

-- 12 command to fetch uppercase name in card_holder
select upper(name) as uppercase_name from card_holder;


-- 13 command to fetch transaction amount with between operator
select id,date,amount from transaction 
where amount between 500 And 900;

-- 14 command to fetch transaction amount with between operator
select id,date,amount from transaction 
where amount not between 500 And 900;


-- 15 command to fetch amount by using In operator
select id,amount from transaction where amount In(550,999,1000);

-- 16 Write a query to fetch data where card_holder name end Z.
select id_c_h,name from card_holder where name Like "%Z";

-- 17 write a query to fetch top 5 record from transaction table.
select * from transaction limit 5;

-- 18	Write a query to show top 5 highest amount.
select * from transaction order by amount desc limit 5;

-- 19
select now() as current_date_time;
select curdate();

-- 20 Write a query to show highest amount in table.
select max(amount) as highest_amount from transaction;

-- 21 write a query to fetch number of credit card.
select count(*) from credit_card;

-- 22 write a query to find highest amount of transaction by using subquery.
select id,date,amount,card from transaction 
where amount=(select max(amount) from transaction);

-- 23	write a query to find 2nd highest transaction by using subquery.
select id,date,amount,card from transaction 
where amount=(select max(amount) from transaction 
where  amount < (select max(amount) from transaction));

select id,date,amount,card from transaction 
where amount<(select max(amount) from transaction) 
order by amount desc limit 1; 


select merchant.name,merchant_category.name from merchant
cross join merchant_category; 


select transaction.card,credit_card.card from transaction
left join credit_card 
ON transaction.card = credit_card.card;

select transaction.card,credit_card.card from transaction
Right join credit_card 
ON transaction.card = credit_card.card;

select transaction.card,credit_card.card from transaction
Cross join credit_card 
ON transaction.card = credit_card.card;



create view detail_view
as select * from transaction where amount<500;
select * from detail_view;

select avg(amount) from transaction;

select sum(amount) from transaction;

select concat("Shraddha", 'Thik');

select length ("shraddha thik");

select reverse("Shraddha Thik");

select curtime();

select trauncate();

select abs(-5) as absolute;

select mod(24,7) as remainder;

select power(6,2) as square;