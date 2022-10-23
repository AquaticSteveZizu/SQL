
SELECT COUNT(orderid)
FROM BIT_DB.JanSales;


SELECT COUNT(orderid)
FROM BIT_DB.JanSales
WHERE Product='iPhone';

SELECT acctnum
FROM BIT_DB.customers cust
INNER JOIN BIT_DB.FebSales Feb
ON cust.order_id=FEB.orderid;

SELECT distinct Product, price
FROM BIT_DB.JanSales
WHERE  price in (SELECT min(price) FROM BIT_DB.JanSales);

SELECT sum(quantity)*price as revenue
,product
FROM BIT_DB.JanSales
GROUP BY product;

select 
sum(Quantity), 
product, 
sum(quantity)*price as revenue
FROM BIT_DB.FebSales 
WHERE location = '548 Lincoln St, Seattle, WA 98101'
GROUP BY product;

select 
count(cust.acctnum), 
avg(quantity*price)
FROM BIT_DB.FebSales Feb
LEFT JOIN BIT_DB.customers cust
ON FEB.orderid=cust.order_id
WHERE Feb.Quantity>2;