-- View: "tambon_business"

DROP VIEW tambon_business;

CREATE OR REPLACE VIEW tambon_business AS 
SELECT b.tbid AS tambon_id,  CAST('1986' AS CHAR(4)) AS year, 
    CAST(CAST(a.n_pop AS DOUBLE PRECISION) AS INT) AS tambon_population,
    CAST(CAST(b.n_retail AS DOUBLE PRECISION) AS INT) AS retail_business,
    CAST(CAST(b.n_cottage AS DOUBLE PRECISION) AS INT) AS cottage_business   
FROM cdd_86_geca_tb_raw b
INNER JOIN cdd_86_gca_tb_raw  a
    ON a.tbid = b.tbid
UNION
SELECT b.tbid AS tambon_id,  CAST('1988' AS CHAR(4)) AS year, 
    CAST(CAST(a.n_pop AS DOUBLE PRECISION) AS INT) AS tambon_population, 
    CAST(CAST(b.n_retail AS DOUBLE PRECISION) AS INT) AS retail_business,
    CAST(CAST(b.n_cottage AS DOUBLE PRECISION) AS INT) AS cottage_business   
FROM cdd_88_geca_tb_raw b
INNER JOIN cdd_88_gca_tb_raw  a
    ON a.tbid = b.tbid
UNION
SELECT b.tbid AS tambon_id,  CAST('1990' AS CHAR(4)) AS year, 
    CAST(CAST(a.n_pop AS DOUBLE PRECISION) AS INT) AS tambon_population, 
    CAST(CAST(b.n_retail AS DOUBLE PRECISION) AS INT) AS retail_business,
    CAST(CAST(b.n_cottage AS DOUBLE PRECISION) AS INT) AS cottage_business   
FROM cdd_90_geca_tb_raw b
INNER JOIN cdd_90_gca_tb_raw  a
    ON a.tbid = b.tbid
UNION
SELECT b.tbid AS tambon_id,  CAST('1992' AS CHAR(4)) AS year, 
    CAST(CAST(a.n_pop AS DOUBLE PRECISION) AS INT) AS tambon_population, 
    CAST(CAST(b.n_retail AS DOUBLE PRECISION) AS INT) AS retail_business,
    CAST(CAST(b.n_cottage AS DOUBLE PRECISION) AS INT) AS cottage_business   
FROM cdd_92_geca_tb_raw b
INNER JOIN cdd_92_gca_tb_raw  a
    ON a.tbid = b.tbid
UNION
SELECT b.tbid AS tambon_id,  CAST('1994' AS CHAR(4)) AS year, 
    CAST(CAST(a.n_pop AS DOUBLE PRECISION) AS INT) AS tambon_population, 
    CAST(CAST(b.n_retail AS DOUBLE PRECISION) AS INT) AS retail_business,
    CAST(CAST(b.n_cottage AS DOUBLE PRECISION) AS INT) AS cottage_business   
FROM cdd_94_geca_tb_raw b
INNER JOIN cdd_94_gca_tb_raw  a
    ON a.tbid = b.tbid
UNION
SELECT b.tbid AS tambon_id,  CAST('1996' AS CHAR(4)) AS year, 
    CAST(CAST(a.n_pop AS DOUBLE PRECISION) AS INT) AS tambon_population, 
    CAST(CAST(b.n_retail AS DOUBLE PRECISION) AS INT) AS retail_business,
    CAST(CAST(b.n_cottage AS DOUBLE PRECISION) AS INT) AS cottage_business   
FROM cdd_96_geca_tb_raw b
INNER JOIN cdd_96_gca_tb_raw  a
    ON a.tbid = b.tbid

;


ALTER TABLE tambon_business OWNER TO fan;