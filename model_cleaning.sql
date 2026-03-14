select [manufacturer] , model
from dbo.Cars
where model is null 

UPDATE dbo.Cars
SET model = 'UNKNOWN'
WHERE model IS NULL;

SELECT [manufacturer] , model
from dbo.Cars
where model = 'UNKNOWN' and manufacturer = 'ford'

SELECT manufacturer , COUNT(*) as num_of_models
from dbo.Cars
WHERE model != 'UNKNOWN'
GROUP BY manufacturer
ORDER BY num_of_models DESC