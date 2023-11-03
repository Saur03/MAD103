SELECT CONCAT(au_fname, ' ', au_lname) AS full_name,
       CONCAT(address, ', ', city, ', ', state, ', ', zip) AS complete_address
FROM authors;
