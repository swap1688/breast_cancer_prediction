USE breast_cancer;

SELECT *
FROM breast_cancer
LIMIT 10;

## Q1. What is the maximum size of a cancer cell?
SELECT MAX(radius_mean) as max_size_of_cancer_cell
FROM breast_cancer;
-- max size of cancer cell is '28.11'

## Q2. What is the minimum size of the cancer cell?
SELECT MIN(radius_mean) as min_size_of_cancer_cell
FROM breast_cancer;
-- min size of cancer cell is '6.981'

## Q3. What is the maximum size of cancer cell with diagnosis 'M'
SELECT diagnosis, MAX(radius_mean) as max_size_of_cancer_cell
FROM breast_cancer
WHERE diagnosis = 'M';
-- Maximum size of cancer cell with diagnosis 'M' is '28.11'

## Q4. What is the maximum size of cancer cell with diagnosis 'M'
SELECT diagnosis, MIN(radius_mean) as min_size_of_cancer_cell
FROM breast_cancer
WHERE diagnosis = 'M';
-- Minimum size of cancer cell with diagnosis 'M' is '10.95'

## Q5.  What is the maximum size of cancer cell with diagnosis 'B'
SELECT diagnosis, MAX(radius_mean) as max_size_of_cancer_cell
FROM breast_cancer
WHERE diagnosis = 'B';
-- Maximum size of cancer cell with diagnosis 'B' is '17.85'

## Q6.  What is the minimmum size of cancer cell with diagnosis 'B'
SELECT diagnosis, MIN(radius_mean) as max_size_of_cancer_cell
FROM breast_cancer
WHERE diagnosis = 'B';
-- Minimum size of cancer cell with diagnosis 'B' is '6.981'

## Q6.  What is the total count of diagnosis with different categories.
SELECT diagnosis, COUNT(diagnosis) as total_count
FROM breast_cancer
GROUP BY diagnosis;
-- There are total two types of diagnosis, type 'M' with '212' total count and type 'B' with '357' total count

## Q7. Calculate the average statistics of area_mean for each diagnosis category
SELECT diagnosis, round(AVG(area_mean),2) AS Average_Area_Mean
FROM breast_cancer
GROUP BY diagnosis;
-- Average statistics of area_mean for diagnosis category 'M' is 978.38 and for category 'B' is 462.79

## Q8. Calculate the  average Compactness for each Smoothness category
SELECT smoothness_mean, AVG(compactness_mean) AS Average_Compactness
FROM breast_cancer
GROUP BY smoothness_mean
HAVING smoothness_mean > 0.13;
-- There are total 8 records where cancer cells shows irregularity of shape

## Q9. Display rows with Radius greater than 15 and Area less than 800
SELECT *
FROM breast_cancer
WHERE radius_mean > 15 AND area_mean < 750;
-- There are total 22 records where size of a cancer cell is greater than 15 and growth is less than 750
-- List of cancer cells which are relatively larger but not growing extensively.

## Q10. What is the point of largest concave region? 
ALTER TABLE breast_cancer
CHANGE `concave points_mean` concave_points_mean FLOAT;

SELECT MAX(concave_points_mean) as max_concave_region
FROM breast_cancer;
-- The largest concave region point is 0.2012

SELECT area_se, area_mean, area_worst, diagnosis
FROM breast_cancer
GROUP BY diagnosis;

