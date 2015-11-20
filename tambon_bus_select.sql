-- select query to get data to feed matla

SELECT t.tambon_id, t.year, CAST((b.retail_business+b.cottage_business)/CAST(b.tambon_population AS DOUBLE PRECISION) as DOUBLE PRECISION) AS business_proxy, 
c.baac_credit*c.commercial_credit AS credit_proxy,
t.flush_toilets as pca1, t.tv_sets AS pca2, t.motorcycles AS pca3, t.pickup_trucks AS pca4, b.tambon_population as population
FROM tambon_wealth t
LEFT JOIN tambon_business b
    ON b.tambon_id = t.tambon_id AND b.year = t.year
LEFT JOIN tambon_credit c
    ON c.tambon_id = t.tambon_id AND c.year = t.year    
WHERE
t.tambon_id in 
--build intersection of obejct having no missing data
(SELECT tambon_id
  FROM tambon_business
WHERE  retail_business+cottage_business < (tambon_population)*0.2
GROUP BY tambon_id
HAVING COUNT(*) = 6
--AND MAX(retail_business)-MIN(retail_business) < 0.99*MAX(retail_business)
--AND MAX(cottage_business)-MIN(cottage_business) < 0.99*MAX(cottage_business)
)

AND t.tambon_id IN
(SELECT tambon_id
  FROM tambon_wealth
GROUP BY tambon_id
HAVING COUNT(*) = 6
AND (MAX(flush_toilets)-MIN(flush_toilets) < 0.9*MAX(flush_toilets))
AND (MAX(tv_sets)-MIN(tv_sets) < 0.9*MAX(tv_sets))
AND (MAX(motorcycles)-MIN(motorcycles) < 0.9*MAX(motorcycles))
AND (MAX(pickup_trucks)-MIN(pickup_trucks) < 0.9*MAX(pickup_trucks))
)
AND t.tambon_id IN 
(
SELECT tambon_id
  FROM tambon_credit
 group by tambon_id
 having count(*) = 6
)
ORDER BY tambon_id, year