SELECT title_name, pages, price, price / pages AS price_per_page
FROM books
WHERE contract = 'Under Contract'
ORDER BY pages DESC;
