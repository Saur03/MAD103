--Q1. what employee had the least sales

SELECT emp_name
FROM pub_employees
WHERE emp_id IN (
    SELECT emp_id
    FROM empsales
    WHERE sales = (
        SELECT MIN(sales)
        FROM empsales
    )
);

--Q2. what book has the least pages

SELECT title_name, pages
FROM titles
WHERE pages = (SELECT MIN(pages) FROM titles WHERE pub_id IN (SELECT pub_id FROM publishers));

--Q3. what titles had sales that were higher than the average sales

SELECT title_name, sales
FROM titles
WHERE sales > (SELECT AVG(sales) FROM titles);

--Q4.what publisher has published a book that is not under contract

SELECT DISTINCT pub_name
FROM publishers
WHERE pub_id IN (SELECT DISTINCT pub_id FROM titles WHERE contract = '1');

--Q5. who is the CEO of our publishing company

SELECT emp_name as CEO
FROM pub_employees
WHERE emp_id IN (
    SELECT emp_id
    FROM hire
    WHERE emp_title = 'CEO'
) AND boss_id IS NULL;
