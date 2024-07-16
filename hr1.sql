select * from country_devolopment;

DESCRIBE country_devolopment;

SELECT 
    MIN(safetysecurity) AS min_safetysecurity,
    MAX(safetysecurity) AS max_safetysecurity,
    round(AVG(safetysecurity), 2) AS avg_safetysecurity,
    COUNT(*) AS count_safetysecurity
FROM country_devolopment;


SELECT 
    CASE 
        WHEN safetysecurity > 90 THEN 'Above 90'
        WHEN safetysecurity > 80 THEN '81-90'
        WHEN safetysecurity > 70 THEN '71-80'
        ELSE '70 or below'
    END AS safetysecurity_range,
    COUNT(*) AS count
FROM country_devolopment
GROUP BY 
    CASE 
        WHEN safetysecurity > 90 THEN 'Above 90'
        WHEN safetysecurity > 80 THEN '81-90'
        WHEN safetysecurity > 70 THEN '71-80'
        ELSE '70 or below'
    END;

SELECT 
    CASE 
        WHEN personelfreedom > 90 THEN 'Above 90'
        WHEN personelfreedom > 80 THEN '81-90'
        WHEN personelfreedom > 70 THEN '71-80'
        ELSE '70 or below'
    END AS personelfreedom_range,
    COUNT(*) AS count
FROM country_devolopment
GROUP BY 
    CASE 
        WHEN personelfreedom > 90 THEN 'Above 90'
        WHEN personelfreedom > 80 THEN '81-90'
        WHEN personelfreedom > 70 THEN '71-80'
        ELSE '70 or below'
    END;


SELECT safetysecurity
FROM country_devolopment
WHERE safetysecurity > 90;


select distinct COUNTRY
from country_devolopment;


UPDATE country_devolopment
SET COUNTRY = REPLACE(COUNTRY, 'Â ', '') -- Replace with the exact characters found
WHERE COUNTRY LIKE 'Â%';

-- Look at the first few rows
SELECT * FROM country_devolopment FETCH FIRST 5 ROWS ONLY;

SELECT round(CORR(safetysecurity, economicquality), 2) AS corr_safetysecurity_economicquality
FROM country_devolopment;

SELECT round(CORR(MARKETACCESSINFRASTRUCTURE, LIVINGCONDITIONS), 2) AS corr_MARKETACCESSINFRASTRUCTURE_LIVINGCONDITIONS
FROM country_devolopment;

SELECT round(CORR(MARKETACCESSINFRASTRUCTURE, LIVINGCONDITIONS), 2) AS corr_MARKETACCESSINFRASTRUCTURE_LIVINGCONDITIONS
FROM country_devolopment;





