--Question1:- if sales tax was 8% on book purchases - what would be the cost of our cheapest book to buy
SELECT MIN(price / (1+ 0.08)) AS cheapest_book_cost
FROM titles;

--Question2:- when did we publish our first biography?
SELECT MIN(pubdate) AS first_biography_publish_date
FROM titles
WHERE type LIKE '%biography%';

--Question3:- what was the total amount of money we made on psychology books.  The total for each book can be determined by multiplying the sales * the price of the book
SELECT SUM(sales * price) AS total_money_made_on_psychology_books
FROM titles
WHERE type LIKE '%psychology%';

--Question4:- How many books do we publish that cost 12.99 or less
SELECT COUNT(*) AS number_of_books
FROM titles
WHERE price <= 12.99;
