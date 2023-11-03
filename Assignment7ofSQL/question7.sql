SELECT title_name, type, pubdate, pages
FROM titles
WHERE EXTRACT(MONTH FROM pubdate) = 5;
