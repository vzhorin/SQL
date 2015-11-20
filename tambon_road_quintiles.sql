-- View: "tambon_road_quintiles"

SELECT rl1.key_, rl1.roads_km, COUNT(rl2.roads_km) AS RoadLength_Rank
FROM tambon_roads_km rl1,  tambon_roads_km rl2

WHERE rl1.roads_km<= rl2.roads_km 
--	OR (rl1.roads_len=rl2.roads_len and rl1.key_ = rl2.key_)
GROUP BY rl1.key_, rl1.roads_km
ORDER BY rl1.roads_km DESC, rl1.key_ DESC;