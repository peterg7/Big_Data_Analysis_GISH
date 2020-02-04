-- Create table for non-vine reviews
SELECT *  
INTO non_vine_reviews
FROM vine_table
WHERE vine='N';

-- Create table for vine-only reviews
SELECT *  
INTO vine_only_reviews
FROM vine_table
WHERE vine='Y';

-- Count of reviews for each table
SELECT COUNT(review_id) 
FROM non_vine_reviews;
-- Returns 5,101,649

SELECT COUNT(review_id) 
FROM vine_only_reviews;
-- Returns 27

-- Count of 5-star ratings
SELECT COUNT(star_rating)
FROM non_vine_reviews
WHERE star_rating = 5;
-- Returns 2,952,604

SELECT COUNT(star_rating) 
FROM vine_only_reviews
WHERE star_rating = 5;
-- Returns 9

-- Sum of helpful votes
SELECT SUM(helpful_votes)
FROM non_vine_reviews;
-- Returns 8,228,818

SELECT SUM(helpful_votes) 
FROM vine_only_reviews;
-- Returns 35

-- Average rating
SELECT AVG(star_rating)
FROM non_vine_reviews;
-- Returns 4.2408881912495352

SELECT AVG(star_rating) 
FROM vine_only_reviews;
-- Returns 4.0
