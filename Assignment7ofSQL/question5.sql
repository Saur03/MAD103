SELECT title_name, pubdate, DATEDIFF(CURDATE(), pubdate) AS days_since_published
FROM titles;
