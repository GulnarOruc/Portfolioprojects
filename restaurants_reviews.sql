select * from restaurants_reviews;

select distinct country
from restaurants_reviews;

SELECT COUNT(*) FROM restaurants_reviews;

select distinct sentiment
from restaurants_reviews;


SELECT 
    COUNTRY,
    COUNT(CASE WHEN TRIM(UPPER(sentiment)) = 'POSITIVE' THEN 1 END) AS Positive_Count,
    COUNT(CASE WHEN TRIM(UPPER(sentiment)) = 'NEGATIVE' THEN 1 END) AS Negative_Count
FROM 
    restaurants_reviews
GROUP BY 
    COUNTRY
ORDER BY 
    Negative_Count DESC;



SELECT 
    RESTAURANT_NAME,
    COUNT(*) AS Review_Count
FROM 
    restaurants_reviews
GROUP BY 
    RESTAURANT_NAME
ORDER BY 
    Review_Count DESC;
    
    

SELECT 
    RESTAURANT_NAME,
    ROUND(AVG(CASE 
                WHEN TRIM(UPPER(sentiment)) = 'POSITIVE' THEN 2 
                WHEN TRIM(UPPER(sentiment)) = 'NEGATIVE' THEN 1 
                ELSE 0 
            END), 2) AS Avg_Sentiment_Score
FROM 
    restaurants_reviews
GROUP BY 
    RESTAURANT_NAME
ORDER BY 
    Avg_Sentiment_Score DESC;




SELECT 
    RESTAURANT_NAME,
    COUNT(*) AS Negative_Review_Count
FROM 
    restaurants_reviews
WHERE 
    TRIM(UPPER(sentiment)) = 'NEGATIVE'
GROUP BY 
    RESTAURANT_NAME
ORDER BY 
    Negative_Review_Count DESC;



SELECT 
    RESTAURANT_NAME,
    COUNT(*) AS Positive_Review_Count
FROM 
    restaurants_reviews
WHERE 
    TRIM(UPPER(sentiment)) = 'POSITIVE'
GROUP BY 
    RESTAURANT_NAME
ORDER BY 
    Positive_Review_Count DESC;


SELECT 
    RESTAURANT_NAME,
    REVIEW_TITLE,
    sentiment
FROM 
    restaurants_reviews
WHERE 
    LOWER(REVIEW_TITLE) LIKE '%delicious%'
    OR LOWER(REVIEW_TITLE) LIKE '%terrible%';


SELECT 
    REVIEW_TITLE,
    sentiment,
    COUNT(*) AS Review_Count
FROM 
    restaurants_reviews
WHERE 
    LOWER(REVIEW_TITLE) LIKE '%great%'
    OR LOWER(REVIEW_TITLE) LIKE '%bad%'
GROUP BY 
    REVIEW_TITLE, sentiment
ORDER BY 
    Review_Count DESC;


SELECT 
    RESTAURANT_NAME,
    REVIEW_TITLE,
    sentiment
FROM 
    restaurants_reviews
WHERE 
    RESTAURANT_NAME = 'The Frog at Bercy Village'
ORDER BY 
    sentiment DESC;



SELECT 
    RESTAURANT_NAME,
    REVIEW_TITLE,
    sentiment
FROM 
    restaurants_reviews
WHERE 
    RESTAURANT_NAME = 'Ad Hoc Ristorante (Piazza del Popolo)'
ORDER BY 
    sentiment DESC;


SELECT 
    RESTAURANT_NAME,
    REVIEW_TITLE,
    sentiment
FROM 
    restaurants_reviews
WHERE 
    RESTAURANT_NAME = 'Stara Kamienica'
ORDER BY 
    sentiment DESC;
    
