
SELECT substr(p1.key_, 1,6), p1.mjrddis, COUNT(p2.mjrddis) AS RoadLength_Rank
FROM tambon_points p1,  tambon_points p2

WHERE p1.mjrddis>= p2.mjrddis 
	OR (p1.mjrddis=p2.mjrddis and p1.key_ = p2.key_)
and LTRIM(RTRIM(p1.key_)) <> '0000000000'
GROUP BY p1.key_, p1.mjrddis
ORDER BY p1.mjrddis asc, p1.key_ asc;