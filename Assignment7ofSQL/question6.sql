SELECT title_name, pages, price, price / pages AS price_per_page
FROM titles
WHERE contract = 1
ORDER BY price_per_page DESC;
