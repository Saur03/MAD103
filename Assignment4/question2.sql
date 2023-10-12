CREATE TABLE games (
    game_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    platform VARCHAR(50) NOT NULL,
    rating DECIMAL(3, 2) NOT NULL,
    purchase_price DECIMAL(8, 2) NOT NULL,
    new_or_used VARCHAR(10) NOT NULL,
    date_purchased DATE NOT NULL
);

INSERT INTO games (title, platform, rating, purchase_price, new_or_used, date_purchased)
VALUES ('Animal Crossing: New Horizons', 'Nintendo Switch', 5.0, 79.99, 'New', '2021-05-04');

INSERT INTO games (title, platform, rating, purchase_price, new_or_used, date_purchased)
VALUES ('Microsoft Flight Simulator', 'Windows PC', 5.0, 54.00, 'New', '2021-05-04');
