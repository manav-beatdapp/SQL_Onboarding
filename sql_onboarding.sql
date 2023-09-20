select name from track WHERE  GenreId =1
-- names of songs that have genreid of 1

select COUNT(1) from Invoice i where BillingState  in ('NY','CA') 
-- purchases made with billing state as california/new york

select avg(total),strftime('%Y',InvoiceDate) as yr from Invoice group by strftime('%Y',InvoiceDate) 
-- avergae purchase value for each of the years

SELECT * from Invoice i WHERE  CustomerId BETWEEN 10 and 15
-- print all invoice lines for customerid in [10,15] 

select * from Invoice i WHERE CustomerId = 20 AND Total >3 AND InvoiceDate >='2009-08-29' and InvoiceDate <='2012-04-15'
-- invoices between Aug 29 2009 - 15th April 2012 by customer 20 with a value > 3

SELECT name from Artist a WHERE name like 'k%' limit 2
-- 2 artists whose name begin with K

CREATE table beatdapp (restaurant_name varchar,city varchar, amount_spent float, visited_at datetime)

INSERT into beatdapp  VALUES('A','Vancouver',100,'2022-08-07'),
							('B','Surrey',50,'2021-01-06'),
							('C','Toronto',80,'2022-03-17'),
							('D','Burnaby',70,'1998-03-11'),
							('E','New West',60,'2019-12-01')

SELECT * from beatdapp 
-- create table, insert data and display

SELECT title,a2.name from Album a join Artist a2 on a.ArtistId =a2.ArtistId where a2.Name = 'AC/DC'
-- print all songs by AC/DC with artist and album names

select name from Track t where albumid in (select albumId from Album a WHERE ArtistId in (select artistid from album where title like 'Balls to the Wall'))
-- finding all tracks that the albums artist has made given a album name