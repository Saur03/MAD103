--Question1:- show me the publisher name and the type of book for the title 1977
SELECT publishers.pub_name, titles.type
FROM titles
INNER JOIN publishers ON titles.pub_id = publishers.pub_id
WHERE titles.title_name = '1977!';

--Question2:- show me the publishers and the titles for all history books
SELECT publishers.pub_name, titles.type 
FROM publishers
LEFT JOIN titles ON publishers.pub_id = titles.pub_id AND titles type = 'history';


--Question3:- show the titles, publishers and the author full names (first and last as a single value) for all books.
SELECT t.title_name AS 'Title', p.pub_name AS 'Publisher',
    CONCAT(a.au_fname, ' ', a.au_lname) AS 'Author'
FROM titles as t
INNER JOIN publishers as p ON t.pub_id = p.pub_id
INNER JOIN title_authors as ta ON t.title_id = ta.title_id
INNER JOIN authors a ON ta.au_id = a.au_id;

--Question4:- select the titles, and publishers for books with an advance of $1,000,000
SELECT t.title_name, p.pub_name
FROM titles AS t
INNER JOIN royalties AS r ON t.title_id = r.title_id
INNER JOIN publishers AS p ON t.pub_id = p.pub_id
WHERE r.advance = 1000000;

--Question5:- show me the titles and the advances for all the biography books (only return back valid and known advances)
SELECT titles.title_id, titles.title_name, titles.type, royalties.advance
FROM titles
INNER JOIN title_authors ON titles.title_id = title_authors.title_id
INNER JOIN royalties ON titles.title_id = royalties.title_id
WHERE titles.type = 'biography' AND royalties.advance IS NOT NULL;



--Question6:- Show the full name for all the authors (first and last name as a single value) and the titles for the books they wrote
SELECT CONCAT(authors.au_fname, ' ', authors.au_lname) AS author_name, titles.title_name
FROM title_authors
INNER JOIN authors ON title_authors.au_id = authors.au_id
INNER JOIN titles ON titles.title_id = title_authors.title_id;


--Question7:- show me the sales and employee title for Lord Cooper
SELECT e.emp_id, e.emp_name, h.emp_title, s.sales
FROM pub_employees as e
LEFT OUTER JOIN hire as h ON e.emp_id = h.emp_id
LEFT OUTER JOIN empsales as s ON e.emp_id = s.emp_id
WHERE e.emp_name = 'Lord Copper';

--Question8:- select the titles and royalty rate for books with a royalty greater than 0.05.  Order by the royalty rate in descending order
SELECT titles.title_id, titles.title_name, royalties.royalty_rate
FROM titles
INNER JOIN royalties ON titles.title_id = royalties.title_id
WHERE royalties.royalty_rate > 0.05
ORDER BY royalties.royalty_rate DESC;


--Question9:- how many titles did each publisher publish
SELECT pub_name, COUNT(title_id) AS total_titles_published
FROM publishers
LEFT OUTER JOIN titles ON publishers.pub_id = titles.pub_id
GROUP BY pub_name;

--Question10:- show the title, the author's full name (first and last as a single value) for books with an advance larger than $1,000
SELECT t.title_name, CONCAT(a.au_fname, ' ', a.au_lname) AS author_name
FROM titles as t
INNER JOIN title_authors as ta ON t.title_id = ta.title_id
INNER JOIN authors as a ON ta.au_id = a.au_id
INNER JOIN royalties as r ON t.title_id = r.title_id
WHERE r.advance > 1000;

 