SELECT DISTINCT [region_url] from [FINAL_PROJECT_DEPI].[dbo].[Cars]

SELECT DISTINCT [region] from [FINAL_PROJECT_DEPI].[dbo].[Cars]

SELECT DISTINCT TRIM(region_url) AS region_url
FROM [FINAL_PROJECT_DEPI].[dbo].[Cars];


-- Step 1: Add the new column
ALTER TABLE Cars
ADD clean_region VARCHAR(255);

-- Step 2: Populate the new column based on region_url
--UPDATE Cars
--SET clean_region = 
--    LTRIM(RTRIM(
--        LOWER(
--            REPLACE(
--                REPLACE(
--                    REPLACE(
--                        REPLACE(
--                            REPLACE(
--                                REPLACE(
--                                    REPLACE(
--                                        REPLACE(
--                                            REPLACE(region_url, 'https://', ''),
--                                            '.craigslist.org', ''
--                                        ),
--                                        '/cto', ''
--                                    ),
--                                    '/ctd', ''
--                                ),
--                                '/ct', ''
--                            ),
--                            '/cty', ''
--                        ),
--                        '/craigslist', ''
--                    ),
--                    '/', ' '
--                ),
--                '-', ' '
--            )
--        )
--    ));



    -- Step 3: Verify the results
    SELECT Distinct clean_region from Cars

--ALTER TABLE Cars
--DROP COLUMN region;


-- Which regions have the highest number of car listings?

SELECT top 10 clean_region, COUNT(*) AS num_listings
FROM Cars
GROUP BY clean_region
ORDER BY num_listings DESC;

