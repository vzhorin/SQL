-- View: "tambon_credit"
--vz 11/1/07

DROP VIEW tambon_credit;

CREATE OR REPLACE VIEW tambon_credit AS 
SELECT b.tbid AS tambon_id,  CAST('1986' AS CHAR(4)) AS year, 
    CAST(CASE WHEN (CAST(CAST(b.b_baac AS DOUBLE PRECISION) AS INT) =2) 
    THEN 1 ELSE 0 END AS INT) AS baac_credit,
    CAST(CASE WHEN (CAST(CAST(b.b_comb AS DOUBLE PRECISION) AS INT) =2) 
    THEN 1 ELSE 0 END AS INT) AS commercial_credit
FROM cdd_86_gcb_tb_raw b    
UNION
SELECT b.tbid AS tambon_id,  CAST('1988' AS CHAR(4)) AS year, 
    CAST(CASE WHEN (CAST(CAST(b.b_baac AS DOUBLE PRECISION) AS INT) =2) 
    THEN 1 ELSE 0 END AS INT) AS baac_credit,
    CAST(CASE WHEN (CAST(CAST(b.b_comb AS DOUBLE PRECISION) AS INT) =2) 
    THEN 1 ELSE 0 END AS INT) AS commercial_credit
FROM cdd_88_gcb_tb_raw b
UNION
SELECT b.tbid AS tambon_id,  CAST('1990' AS CHAR(4)) AS year, 
    CAST(CASE WHEN (CAST(CAST(b.b_baac AS DOUBLE PRECISION) AS INT) =2) 
    THEN 1 ELSE 0 END AS INT) AS baac_credit,
    CAST(CASE WHEN (CAST(CAST(b.b_comb AS DOUBLE PRECISION) AS INT) =2) 
    THEN 1 ELSE 0 END AS INT) AS commercial_credit
FROM cdd_90_gcb_tb_raw b
UNION
SELECT b.tbid AS tambon_id,  CAST('1992' AS CHAR(4)) AS year, 
    CAST(CASE WHEN (CAST(CAST(b.b_baac AS DOUBLE PRECISION) AS INT) =2) 
    THEN 1 ELSE 0 END AS INT) AS baac_credit,
    CAST(CASE WHEN (CAST(CAST(b.b_comb AS DOUBLE PRECISION) AS INT) =2) 
    THEN 1 ELSE 0 END AS INT) AS commercial_credit
FROM cdd_92_gcb_tb_raw b

UNION
SELECT b.tbid AS tambon_id,  CAST('1994' AS CHAR(4)) AS year, 
    CAST(CASE WHEN (CAST(CAST(b.b_baac AS DOUBLE PRECISION) AS INT) =2) 
    THEN 1 ELSE 0 END AS INT) AS baac_credit,
    CAST(CASE WHEN (CAST(CAST(b.b_comb AS DOUBLE PRECISION) AS INT) =2) 
    THEN 1 ELSE 0 END AS INT) AS commercial_credit
FROM cdd_94_gcb_tb_raw b
UNION
SELECT b.tbid AS tambon_id,  CAST('1996' AS CHAR(4)) AS year, 
    CAST(CASE WHEN (CAST(CAST(b.b_baac AS DOUBLE PRECISION) AS INT) =2) 
    THEN 1 ELSE 0 END AS INT) AS baac_credit,
    CAST(CASE WHEN (CAST(CAST(b.b_comb AS DOUBLE PRECISION) AS INT) =2) 
    THEN 1 ELSE 0 END AS INT) AS commercial_credit
FROM cdd_96_gcb_tb_raw b

;


ALTER TABLE tambon_credit OWNER TO fan;