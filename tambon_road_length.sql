SELECT 
  t.key_, 
  sum(length(r.the_geom))/1000 as roads_km into tambon_roads_km
FROM 
  roads AS r,  
  tambon AS t
WHERE
  contains(t.the_geom,r.the_geom) 
GROUP BY t.key_
ORDER BY roads_km; 