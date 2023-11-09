SELECT DISTINCT
    SUBSTRING(phone, 1, 3) AS Area_Code,
    city AS City
FROM authors
ORDER BY zip;