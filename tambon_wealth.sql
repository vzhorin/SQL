-- View: "tambon_wealth"

DROP VIEW tambon_wealth;

CREATE OR REPLACE VIEW tambon_wealth AS 
SELECT b.tbid AS tambon_id,  CAST('1986' AS CHAR(4)) AS year, 
    CAST(CAST(a.n_pop AS DOUBLE PRECISION) AS INT) AS tambon_population, 
    CAST(CAST(b.n_flush AS DOUBLE PRECISION) AS INT) AS flush_toilets,   
    CAST(CAST(b.n_tv AS DOUBLE PRECISION) AS INT) AS tv_sets, 
    CAST(CAST(b.n_mtcy AS DOUBLE PRECISION) AS INT) AS motorcycles, 
    CAST(CAST(b.n_pick  AS DOUBLE PRECISION) AS INT) AS pickup_trucks
FROM cdd_86_gcb_tb_raw b
INNER JOIN cdd_86_gca_tb_raw  a
    ON a.tbid = b.tbid
UNION
SELECT b.tbid AS tambon_id,  CAST('1988' AS CHAR(4)) AS year, 
    CAST(CAST(a.n_pop AS DOUBLE PRECISION) AS INT) AS tambon_population, 
    CAST(CAST(b.n_flush AS DOUBLE PRECISION) AS INT) AS flush_toilets,   
    CAST(CAST(b.n_tv AS DOUBLE PRECISION) AS INT) AS tv_sets, 
    CAST(CAST(b.n_mtcy AS DOUBLE PRECISION) AS INT) AS motorcycles, 
    CAST(CAST(b.n_pick  AS DOUBLE PRECISION) AS INT) AS pickup_trucks
FROM cdd_88_gcb_tb_raw b
INNER JOIN cdd_88_gca_tb_raw  a
    ON a.tbid = b.tbid
UNION
SELECT b.tbid AS tambon_id,  CAST('1990' AS CHAR(4)) AS year, 
    CAST(CAST(a.n_pop AS DOUBLE PRECISION) AS INT) AS tambon_population, 
    CAST(CAST(b.n_flush AS DOUBLE PRECISION) AS INT) AS flush_toilets,   
    CAST(CAST(b.n_tv AS DOUBLE PRECISION) AS INT) AS tv_sets, 
    CAST(CAST(b.n_mtcy AS DOUBLE PRECISION) AS INT) AS motorcycles, 
    CAST(CAST(b.n_pick  AS DOUBLE PRECISION) AS INT) AS pickup_trucks
FROM cdd_90_gcb_tb_raw b
INNER JOIN cdd_90_gca_tb_raw  a
    ON a.tbid = b.tbid
UNION
SELECT b.tbid AS tambon_id,  CAST('1992' AS CHAR(4)) AS year, 
    CAST(CAST(a.n_pop AS DOUBLE PRECISION) AS INT) AS tambon_population, 
    CAST(CAST(b.n_flush AS DOUBLE PRECISION) AS INT) AS flush_toilets,   
    CAST(CAST(b.n_tv AS DOUBLE PRECISION) AS INT) AS tv_sets, 
    CAST(CAST(b.n_mtcy AS DOUBLE PRECISION) AS INT) AS motorcycles, 
    CAST(CAST(b.n_pick  AS DOUBLE PRECISION) AS INT) AS pickup_trucks
FROM cdd_92_gcb_tb_raw b
INNER JOIN cdd_92_gca_tb_raw  a
    ON a.tbid = b.tbid
UNION
SELECT b.tbid AS tambon_id,  CAST('1994' AS CHAR(4)) AS year, 
    CAST(CAST(a.n_pop AS DOUBLE PRECISION) AS INT) AS tambon_population, 
    CAST(CAST(b.n_flush AS DOUBLE PRECISION) AS INT) AS flush_toilets,   
    CAST(CAST(b.n_tv AS DOUBLE PRECISION) AS INT) AS tv_sets, 
    CAST(CAST(b.n_mtcy AS DOUBLE PRECISION) AS INT) AS motorcycles, 
    CAST(CAST(b.n_pick  AS DOUBLE PRECISION) AS INT) AS pickup_trucks
FROM cdd_94_gcb_tb_raw b
INNER JOIN cdd_94_gca_tb_raw  a
    ON a.tbid = b.tbid
UNION
SELECT b.tbid AS tambon_id,  CAST('1996' AS CHAR(4)) AS year, 
    CAST(CAST(a.n_pop AS DOUBLE PRECISION) AS INT) AS tambon_population, 
    CAST(CAST(b.n_flush AS DOUBLE PRECISION) AS INT) AS flush_toilets,   
    CAST(CAST(b.n_tv AS DOUBLE PRECISION) AS INT) AS tv_sets, 
    CAST(CAST(b.n_mtcy AS DOUBLE PRECISION) AS INT) AS motorcycles, 
    CAST(CAST(b.n_pick  AS DOUBLE PRECISION) AS INT) AS pickup_trucks
FROM cdd_96_gcb_tb_raw b
INNER JOIN cdd_96_gca_tb_raw  a
    ON a.tbid = b.tbid    
  
;


ALTER TABLE tambon_wealth OWNER TO fan;