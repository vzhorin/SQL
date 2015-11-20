--table "tambon_points"
--vz 09/1/08


-- DROP TABLE tambon_points;

CREATE TABLE tambon_points
 ( objectid serial NOT NULL,
  key_ character varying(12),
  mjrddis integer,
  tambon_id integer,
  dtp6 integer,
  dtop15 integer,
  dbang integer,
  CONSTRAINT tambon_points_pkey PRIMARY KEY (objectid)
)
WITHOUT OIDS;
ALTER TABLE tambon_points OWNER TO victor;
GRANT ALL ON TABLE tambon_points TO thaiuser;
GRANT SELECT ON TABLE tambon_points TO thaireadonly;
GRANT SELECT ON TABLE tambon_points TO public;

-- Index: tambon__points_index

-- DROP INDEX tambon__points_index;

CREATE INDEX tambon__points_index
  ON tambon_points
  USING gist
  (the_geom);


