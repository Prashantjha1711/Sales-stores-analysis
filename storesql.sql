use database_name;
select * from store;
select count(*) from store;
/* Highest and lowest months of sales*/
select sum(amount),month from store group by month order by sum(amount) desc;
/* Highest and lowest months of orders*/
select count(`Order ID`), month from store group by month order by count(`Order ID`) desc;
/* Highest and lowest selling category in males and females */
select sum(amount),Category,gender from store group by category,gender order by sum(amount) desc;
/* top 10 states order id an sales(amount) */
select sum(amount),`ship-state` from store group by `ship-state` order by sum(amount) desc limit 10;
select count(`Order ID`),`ship-state` from store group by `ship-state` order by count(`Order ID`) desc limit 10;