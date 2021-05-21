DROP DATABASE IF EXISTS garageBayDB;
CREATE DATABASE garageBayDB;
USE garageBayDB;
CREATE TABLE itemsForSale (
  id INT NOT NULL AUTO_INCREMENT,
  itemName VARCHAR(100) NULL,
  butItNow DECIMAL(6, 2) NULL,
  currentBid DECIMAL(6, 2) NULL,
  startingBid DECIMAL(6, 2) PRIMARY KEY (id)
);
-- INSERT INTO products (flavor, price, quantity)
-- VALUES ("vanilla", 2.50, 100);
-- INSERT INTO products (flavor, price, quantity)
-- VALUES ("chocolate", 3.10, 120);
-- INSERT INTO products (flavor, price, quantity)
-- VALUES ("strawberry", 3.25, 75);
-- ### Alternative way to insert more than one row
-- INSERT INTO products (flavor, price, quantity)
-- VALUES ("vanilla", 2.50, 100), ("chocolate", 3.10, 120), ("strawberry", 3.25, 75);
-- Dummy Data
INSERT INTO songs (title, artist, genre)
VALUES ('Yalda', 'Visages', 'DnB'),
  ('Gymnopedies', 'Visages', 'DnB'),
  ('The Whistle Song', 'J Majik', 'DnB');