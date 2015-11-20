-- View: "tambon_distances"

DROP VIEW tambon_distances;

CREATE OR REPLACE VIEW tambon_distances AS 
SELECT tp.objectid AS id, 
tp.mjrddis AS major_road_distance,
tp.dtp6 AS major_six_cities,
tp.dtop15 AS major_fifteen_cities,
tp.dbang AS capital_distance,
t.the_geom
FROM tambon_points tp
INNER JOIN tambon  t
    ON tp.key_ = t.key_
