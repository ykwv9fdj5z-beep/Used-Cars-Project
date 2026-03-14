--SELECT DISTINCT [condition] FROM [FINAL_PROJECT_DEPI].[dbo].[Cars]
--SELECT DISTINCT [title_status] FROM [FINAL_PROJECT_DEPI].[dbo].[Cars]
--SELECT DISTINCT [cylinders] FROM [FINAL_PROJECT_DEPI].[dbo].[Cars]
--SELECT DISTINCT [fuel] FROM [FINAL_PROJECT_DEPI].[dbo].[Cars]
--SELECT DISTINCT [transmission] FROM [FINAL_PROJECT_DEPI].[dbo].[Cars]
--SELECT DISTINCT [drive] FROM [FINAL_PROJECT_DEPI].[dbo].[Cars]
--SELECT DISTINCT [size] FROM [FINAL_PROJECT_DEPI].[dbo].[Cars]
SELECT DISTINCT [type] FROM [FINAL_PROJECT_DEPI].[dbo].[Cars]

UPDATE [dbo].[Cars]
SET [condition] = 'UNKNOWN'
WHERE [condition] IS NULL;

UPDATE [dbo].[Cars]
SET [title_status] = 'UNKNOWN'
WHERE [title_status] IS NULL;

UPDATE [dbo].[Cars]
SET cylinders = 'UNKNOWN'
WHERE cylinders IS NULL

UPDATE [dbo].[Cars]
SET fuel = 'UNKNOWN'
WHERE fuel IS NULL

UPDATE [dbo].[Cars]
SET transmission = 'UNKNOWN'
WHERE transmission IS NULL

UPDATE [dbo].[Cars]
SET drive = 'UNKNOWN'
WHERE drive IS NULL

UPDATE [dbo].[Cars]
SET size = 'UNKNOWN'
WHERE size IS NULL

UPDATE [dbo].[Cars]
SET type = 'UNKNOWN'
WHERE type IS NULL

UPDATE [dbo].[Cars]
SET cylinders = 'UNKNOWN'
WHERE cylinders IS NULL

SELECT url , [title_status] , [condition] from [dbo].[Cars]
WHERE [title_status] IS NULL AND [condition] IS NULL

SELECT [condition] , COUNT(*) AS Count
FROM [dbo].[Cars]
GROUP BY [condition]

SELECT [title_status] , COUNT(*) AS Count
FROM [dbo].[Cars]
GROUP BY [title_status]


SELECT [transmission] , count(*) FROM [FINAL_PROJECT_DEPI].[dbo].[Cars] group by [transmission]
SELECT [drive] , count(*) FROM [FINAL_PROJECT_DEPI].[dbo].[Cars] group by [drive]
SELECT [size] ,  count(*) FROM [FINAL_PROJECT_DEPI].[dbo].[Cars] group by [size]
SELECT [type] ,  count(*)  FROM [FINAL_PROJECT_DEPI].[dbo].[Cars] group by [type]
SELECT [cylinders] , count(*) FROM [FINAL_PROJECT_DEPI].[dbo].[Cars] group by [cylinders]
