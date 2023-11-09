SELECT
    UPPER(au_fname) AS first_name,
    UPPER(au_lname) AS last_name,
    LOWER(state) AS state
FROM authors;
