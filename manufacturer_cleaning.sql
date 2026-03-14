-- Handling Missing Values in Column manufacturer
---------------------------------------------------------------

SELECT  url, [manufacturer] 
from [dbo].[Cars]
where [manufacturer] is  null 

SELECT DISTINCT [manufacturer]
from [dbo].[Cars]

--DELETE FROM [dbo].[Cars]
--WHERE [manufacturer] IS NULL -- This will delete all rows where the manufacturer is null

SELECT [manufacturer] , COUNT(model) AS model_count 
FROM [dbo].[Cars]
GROUP BY [manufacturer] 
ORDER BY model_count DESC


WITH CleanedCars AS (
    SELECT 
        url,
        manufacturer AS original_data,
        CASE 
            WHEN url LIKE '%chevy%' THEN 'chevrolet'
            WHEN url LIKE '%vw%' OR url LIKE '%volkswagen%' THEN 'volkswagen'
            WHEN url LIKE '%mercedes%' OR url LIKE '%benz%' THEN 'mercedes-benz'
            WHEN url LIKE '%caddy%' THEN 'cadillac'
            WHEN url LIKE '%jag%' AND url NOT LIKE '%jaguar%' THEN 'jaguar'
            WHEN url LIKE '%infiniti%' OR url LIKE '%infinity%' THEN 'infiniti'
            WHEN url LIKE '%silverado%' THEN 'chevrolet'
            WHEN url LIKE '%excursion%' OR url LIKE '%f150%' THEN 'ford'
            WHEN url LIKE '%tacoma%' OR url LIKE '%tundra%' THEN 'toyota'
            WHEN url LIKE '%acura%' THEN 'acura'
            WHEN url LIKE '%alfa-romeo%' OR url LIKE '%alfa%' THEN 'alfa-romeo'
            WHEN url LIKE '%aston-martin%' THEN 'aston-martin'
            WHEN url LIKE '%audi%' THEN 'audi'
            WHEN url LIKE '%bmw%' THEN 'bmw'
            WHEN url LIKE '%buick%' THEN 'buick'
            WHEN url LIKE '%cadillac%' THEN 'cadillac'
            WHEN url LIKE '%chevrolet%' THEN 'chevrolet'
            WHEN url LIKE '%chrysler%' THEN 'chrysler'
            WHEN url LIKE '%datsun%' THEN 'datsun'
            WHEN url LIKE '%dodge%' THEN 'dodge'
            WHEN url LIKE '%ferrari%' THEN 'ferrari'
            WHEN url LIKE '%fiat%' THEN 'fiat'
            WHEN url LIKE '%ford%' THEN 'ford'
            WHEN url LIKE '%gmc%' THEN 'gmc'
            WHEN url LIKE '%harley-davidson%' THEN 'harley-davidson'
            WHEN url LIKE '%honda%' THEN 'honda'
            WHEN url LIKE '%hyundai%' THEN 'hyundai'
            WHEN url LIKE '%jaguar%' THEN 'jaguar'
            WHEN url LIKE '%jeep%' THEN 'jeep'
            WHEN url LIKE '%kia%' THEN 'kia'
            WHEN url LIKE '%land rover%' OR url LIKE '%land-rover%' THEN 'land rover'
            WHEN url LIKE '%lexus%' THEN 'lexus'
            WHEN url LIKE '%lincoln%' THEN 'lincoln'
            WHEN url LIKE '%mazda%' THEN 'mazda'
            WHEN url LIKE '%mercury%' THEN 'mercury'
            WHEN url LIKE '%mini%' THEN 'mini'
            WHEN url LIKE '%mitsubishi%' THEN 'mitsubishi'
            WHEN url LIKE '%morgan%' THEN 'morgan'
            WHEN url LIKE '%nissan%' THEN 'nissan'
            WHEN url LIKE '%pontiac%' THEN 'pontiac'
            WHEN url LIKE '%porsche%' THEN 'porsche'
            WHEN url LIKE '%ram%' THEN 'ram'
            WHEN url LIKE '%rover%' AND url NOT LIKE '%land rover%' THEN 'rover'
            WHEN url LIKE '%saturn%' THEN 'saturn'
            WHEN url LIKE '%subaru%' THEN 'subaru'
            WHEN url LIKE '%suzuki%' THEN 'suzuki'
            WHEN url LIKE '%tesla%' THEN 'tesla'
            WHEN url LIKE '%toyota%' THEN 'toyota'
            WHEN url LIKE '%volvo%' THEN 'volvo'
            ELSE NULL 
        END AS manufacturer_cleaned
    FROM [dbo].[Cars]
)
    SELECT url , manufacturer_cleaned, original_data FROM CleanedCars  
    WHERE manufacturer_cleaned IS NOT NULL AND original_data IS NULL 


WITH CleanedCars AS (
    SELECT 
        url,
        manufacturer AS original_data,
        CASE 
            WHEN url LIKE '%chevy%' THEN 'chevrolet'
            WHEN url LIKE '%vw%' OR url LIKE '%volkswagen%' THEN 'volkswagen'
            WHEN url LIKE '%mercedes%' OR url LIKE '%benz%' THEN 'mercedes-benz'
            WHEN url LIKE '%caddy%' THEN 'cadillac'
            WHEN url LIKE '%jag%' AND url NOT LIKE '%jaguar%' THEN 'jaguar'
            WHEN url LIKE '%infiniti%' OR url LIKE '%infinity%' THEN 'infiniti'
            WHEN url LIKE '%silverado%' THEN 'chevrolet'
            WHEN url LIKE '%excursion%' OR url LIKE '%f150%' THEN 'ford'
            WHEN url LIKE '%tacoma%' OR url LIKE '%tundra%' THEN 'toyota'
            WHEN url LIKE '%acura%' THEN 'acura'
            WHEN url LIKE '%alfa-romeo%' OR url LIKE '%alfa%' THEN 'alfa-romeo'
            WHEN url LIKE '%aston-martin%' THEN 'aston-martin'
            WHEN url LIKE '%audi%' THEN 'audi'
            WHEN url LIKE '%bmw%' THEN 'bmw'
            WHEN url LIKE '%buick%' THEN 'buick'
            WHEN url LIKE '%cadillac%' THEN 'cadillac'
            WHEN url LIKE '%chevrolet%' THEN 'chevrolet'
            WHEN url LIKE '%chrysler%' THEN 'chrysler'
            WHEN url LIKE '%datsun%' THEN 'datsun'
            WHEN url LIKE '%dodge%' THEN 'dodge'
            WHEN url LIKE '%ferrari%' THEN 'ferrari'
            WHEN url LIKE '%fiat%' THEN 'fiat'
            WHEN url LIKE '%ford%' THEN 'ford'
            WHEN url LIKE '%gmc%' THEN 'gmc'
            WHEN url LIKE '%harley-davidson%' THEN 'harley-davidson'
            WHEN url LIKE '%honda%' THEN 'honda'
            WHEN url LIKE '%hyundai%' THEN 'hyundai'
            WHEN url LIKE '%jaguar%' THEN 'jaguar'
            WHEN url LIKE '%jeep%' THEN 'jeep'
            WHEN url LIKE '%kia%' THEN 'kia'
            WHEN url LIKE '%land rover%' OR url LIKE '%land-rover%' THEN 'land rover'
            WHEN url LIKE '%lexus%' THEN 'lexus'
            WHEN url LIKE '%lincoln%' THEN 'lincoln'
            WHEN url LIKE '%mazda%' THEN 'mazda'
            WHEN url LIKE '%mercury%' THEN 'mercury'
            WHEN url LIKE '%mini%' THEN 'mini'
            WHEN url LIKE '%mitsubishi%' THEN 'mitsubishi'
            WHEN url LIKE '%morgan%' THEN 'morgan'
            WHEN url LIKE '%nissan%' THEN 'nissan'
            WHEN url LIKE '%pontiac%' THEN 'pontiac'
            WHEN url LIKE '%porsche%' THEN 'porsche'
            WHEN url LIKE '%ram%' THEN 'ram'
            WHEN url LIKE '%rover%' AND url NOT LIKE '%land rover%' THEN 'rover'
            WHEN url LIKE '%saturn%' THEN 'saturn'
            WHEN url LIKE '%subaru%' THEN 'subaru'
            WHEN url LIKE '%suzuki%' THEN 'suzuki'
            WHEN url LIKE '%tesla%' THEN 'tesla'
            WHEN url LIKE '%toyota%' THEN 'toyota'
            WHEN url LIKE '%volvo%' THEN 'volvo'

            ELSE NULL 
        END AS manufacturer_cleaned
    FROM [dbo].[Cars]
)
DELETE c
FROM [dbo].[Cars] c
INNER JOIN CleanedCars cc
    ON c.url = cc.url
WHERE cc.manufacturer_cleaned IS NULL
  AND cc.original_data IS NULL;








  WITH CleanedCars AS (
    SELECT 
        url,
        manufacturer AS original_data,
        CASE 
                    WHEN url LIKE '%chevy%' THEN 'chevrolet'
            WHEN url LIKE '%vw%' OR url LIKE '%volkswagen%' THEN 'volkswagen'
            WHEN url LIKE '%mercedes%' OR url LIKE '%benz%' THEN 'mercedes-benz'
            WHEN url LIKE '%caddy%' THEN 'cadillac'
            WHEN url LIKE '%jag%' AND url NOT LIKE '%jaguar%' THEN 'jaguar'
            WHEN url LIKE '%infiniti%' OR url LIKE '%infinity%' THEN 'infiniti'
            WHEN url LIKE '%silverado%' THEN 'chevrolet'
            WHEN url LIKE '%excursion%' OR url LIKE '%f150%' THEN 'ford'
            WHEN url LIKE '%tacoma%' OR url LIKE '%tundra%' THEN 'toyota'
            WHEN url LIKE '%acura%' THEN 'acura'
            WHEN url LIKE '%alfa-romeo%' OR url LIKE '%alfa%' THEN 'alfa-romeo'
            WHEN url LIKE '%aston-martin%' THEN 'aston-martin'
            WHEN url LIKE '%audi%' THEN 'audi'
            WHEN url LIKE '%bmw%' THEN 'bmw'
            WHEN url LIKE '%buick%' THEN 'buick'
            WHEN url LIKE '%cadillac%' THEN 'cadillac'
            WHEN url LIKE '%chevrolet%' THEN 'chevrolet'
            WHEN url LIKE '%chrysler%' THEN 'chrysler'
            WHEN url LIKE '%datsun%' THEN 'datsun'
            WHEN url LIKE '%dodge%' THEN 'dodge'
            WHEN url LIKE '%ferrari%' THEN 'ferrari'
            WHEN url LIKE '%fiat%' THEN 'fiat'
            WHEN url LIKE '%ford%' THEN 'ford'
            WHEN url LIKE '%gmc%' THEN 'gmc'
            WHEN url LIKE '%harley-davidson%' THEN 'harley-davidson'
            WHEN url LIKE '%honda%' THEN 'honda'
            WHEN url LIKE '%hyundai%' THEN 'hyundai'
            WHEN url LIKE '%jaguar%' THEN 'jaguar'
            WHEN url LIKE '%jeep%' THEN 'jeep'
            WHEN url LIKE '%kia%' THEN 'kia'
            WHEN url LIKE '%land rover%' OR url LIKE '%land-rover%' THEN 'land rover'
            WHEN url LIKE '%lexus%' THEN 'lexus'
            WHEN url LIKE '%lincoln%' THEN 'lincoln'
            WHEN url LIKE '%mazda%' THEN 'mazda'
            WHEN url LIKE '%mercury%' THEN 'mercury'
            WHEN url LIKE '%mini%' THEN 'mini'
            WHEN url LIKE '%mitsubishi%' THEN 'mitsubishi'
            WHEN url LIKE '%morgan%' THEN 'morgan'
            WHEN url LIKE '%nissan%' THEN 'nissan'
            WHEN url LIKE '%pontiac%' THEN 'pontiac'
            WHEN url LIKE '%porsche%' THEN 'porsche'
            WHEN url LIKE '%ram%' THEN 'ram'
            WHEN url LIKE '%rover%' AND url NOT LIKE '%land rover%' THEN 'rover'
            WHEN url LIKE '%saturn%' THEN 'saturn'
            WHEN url LIKE '%subaru%' THEN 'subaru'
            WHEN url LIKE '%suzuki%' THEN 'suzuki'
            WHEN url LIKE '%tesla%' THEN 'tesla'
            WHEN url LIKE '%toyota%' THEN 'toyota'
            WHEN url LIKE '%volvo%' THEN 'volvo'

            ELSE NULL 
        END AS manufacturer_cleaned
    FROM [dbo].[Cars]
)
UPDATE c
SET c.manufacturer = cc.manufacturer_cleaned
FROM [dbo].[Cars] c
INNER JOIN CleanedCars cc
    ON c.url = cc.url
WHERE c.manufacturer IS NULL
  AND cc.manufacturer_cleaned IS NOT NULL;