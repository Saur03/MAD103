SELECT title, type, number_of_pages
FROM books
WHERE type IN ('Psychology', 'Biography')
ORDER BY title DESC;