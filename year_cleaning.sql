--To extract Year from url
WITH ExtractYear AS (
    SELECT
        url,
        SUBSTRING(url, PATINDEX('%[0-9][0-9][0-9][0-9]%', url), 4) AS year_extracted,
        year
    FROM Cars
)
SELECT  *
FROM ExtractYear
WHERE year_extracted IS NOT NULL AND year_extracted < 2026 AND year IS NULL;



WITH ExtractYear AS (
    SELECT
        url,
        SUBSTRING(url, PATINDEX('%[0-9][0-9][0-9][0-9]%', url), 4) AS year_extracted,
        year
    FROM Cars
)
UPDATE ExtractYear
SET year = year_extracted
WHERE year_extracted IS NOT NULL
AND year_extracted < '2026'
AND year IS NULL;


DELETE
FROM Cars
WHERE year IS  NULL