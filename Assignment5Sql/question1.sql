-- Create a table to store information about the top watched television events
CREATE TABLE TopTVEvents (
    ShowEvent VARCHAR(255) NOT NULL PRIMARY KEY, -- Use VARCHAR for variable-length text and  Define ShowEvent as the primary key
    ViewershipMillions DECIMAL(6, 2) NOT NULL, -- Use DECIMAL for precise numeric values
    Network VARCHAR(50) NOT NULL -- Use VARCHAR for the network name
);