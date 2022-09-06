-- Comments in SQL Start with dash-dash --

-- QUESTION 1:
-- Find the app with an ID of 1880.
-- ANSWER:  SELECT * FROM analytics WHERE id = 1880;

-- QUESTION 2:
-- Find the ID and app name for all apps that were last updated on August 01, 2018.
-- ANSWER:  SELECT id, app_name FROM analytics where last_updated = '2018-08-01';

-- QUESTION 3:
-- Count the number of apps in each category, e.g. “Family | 1972”.
-- ANSWER:  SELECT category, COUNT(*) AS count FROM analytics GROUP BY category;

-- QUESTION 4:
-- Find the top 5 most-reviewed apps and the number of reviews for each.
-- ANSWER:  SELECT app_name, reviews FROM analytics ORDER BY reviews desc LIMIT 5; 

-- QUESTION 5:
-- Find the app that has the most reviews with a rating greater than equal to 4.8.
-- ANSWER:  SELECT app_name FROM analytics WHERE rating >= 4.8 ORDER BY reviews desc LIMIT 1;

-- QUESTION 6:
-- Find the average rating for each category ordered by the highest rated to lowest rated.
-- ANSWER:  SELECT category, AVG(rating) AS avg_rating FROM analytics GROUP BY category ORDER BY avg_rating desc;

-- QUESTION 7:
-- Find the name, price, and rating of the most expensive app with a rating that’s less than 3.
-- ANSWER:  SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1;

-- QUESTION 8:
-- Find all apps with a min install not exceeding 50, that have a rating. Order your results by highest rated first.
-- ANSWER:  SELECT app_name, min_installs, rating FROM analytics WHERE min_installs <=50 AND rating IS NOT null ORDER BY rating desc;

-- QUESTION 9:
-- Find the names of all apps that are rated less than 3 with at least 10000 reviews.
-- ANSWER:  SELECT app_name FROM analytics WHERE rating < 3 AND reviews <=10000;

-- QUESTION 10:
-- Find the top 10 most-reviewed apps that cost between 10 cents and a dollar.
-- ANSWER:  SELECT app_name, price, reviews FROM analytics WHERE price > 0.10 AND price < 1.00 ORDER BY reviews desc LIMIT 10;

-- QUESTION 11:
-- Find the most out of date app. Hint: You don’t need to do it this way, but it’s possible to do with a subquery: http://www.postgresqltutorial.com/postgresql-max-function/
-- ANSWER:  SELECT app_name, last_updated FROM analytics ORDER BY last_updated asc LIMIT 1;

-- QUESTION 12:
-- Find the most expensive app (the query is very similar to #11).
-- ANSWER:  SELECT app_name, price FROM analytics ORDER BY price desc LIMIT 1;

-- QUESTION 13:
-- Count all the reviews in the Google Play Store.
-- ANSWER:  SELECT SUM(reviews) AS total_reviews FROM analytics;

-- QUESTION 14:
-- Find all the categories that have more than 300 apps in them.
-- ANSWER:  SELECT category, COUNT(*) AS count FROM analytics GROUP BY category HAVING COUNT(*) > 300;

-- QUESTION 15:
-- Find the app that has the highest proportion of min_installs to reviews, among apps that have been installed at least 100,000 times. Display the name of the app along with the number of reviews, the min_installs, and the proportion.
-- ANSWER:  SELECT app_name, reviews, min_installs, (min_installs/reviews) AS installs_to_reviews FROM analytics WHERE min_installs > 100000 ORDER BY installs_to_reviews desc LIMIT 1;