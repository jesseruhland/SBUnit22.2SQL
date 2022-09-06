-- Comments in SQL Start with dash-dash --

-- QUESTION 1:
-- Add a product to the table with the name of “chair”, price of 44.00, and can_be_returned of false.
-- ANSWER:  INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, False);

-- QUESTION 2:
-- Add a product to the table with the name of “stool”, price of 25.99, and can_be_returned of true.
-- ANSWER:  INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, True);

-- QUESTION 3:
-- Add a product to the table with the name of “table”, price of 124.00, and can_be_returned of false.
-- ANSWER:  INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, False);

-- QUESTION 4:
-- Display all of the rows and columns in the table.
-- ANSWER:  SELECT * FROM products;

-- QUESTION 5:
-- Display all of the names of the products.
-- ANSWER:  SELECT name FROM products;

-- QUESTION 6:
-- Display all of the names and prices of the products.
-- ANSWER:  SELECT name, price FROM products;

-- QUESTION 7:
-- Add a new product - make up whatever you would like!
-- ANSWER:  INSERT INTO products (name, price, can_be_returned) VALUES ('couch', 317.00, False);

-- QUESTION 8:
-- Display only the products that can_be_returned.
-- ANSWER:  SELECT * FROM products WHERE can_be_returned = True;

-- QUESTION 9:
-- Display only the products that have a price less than 44.00.
-- ANSWER:  SELECT * FROM products WHERE price < 44.00;

-- QUESTION 10:
-- Display only the products that have a price in between 22.50 and 99.99.
-- ANSWER:  SELECT * FROM products WHERE price > 22.50 AND price < 99.99;

-- QUESTION 11:
-- There’s a sale going on: Everything is $20 off! Update the database accordingly.
-- ANSWER:  UPDATE products SET price = (price - 20.00);

-- QUESTION 12:
-- Because of the sale, everything that costs less than $25 has sold out. Remove all products whose price meets this criteria.
-- ANSWER:  DELETE FROM products WHERE price < 25.00;

-- QUESTION 13:
-- And now the sale is over. For the remaining products, increase their price by $20.
-- ANSWER:  UPDATE products SET price = (price + 20.00);

-- QUESTION 14:
-- There is a new company policy: everything is returnable. Update the database accordingly.
-- ANSWER:  UPDATE products SET can_be_returned = True;