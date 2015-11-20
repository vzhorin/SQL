--table "tambon_rivers"
--vz 17/1/08


-- DROP TABLE tambon_rivers;

CREATE TABLE tambon_rivers
 ( objectid serial NOT NULL,
  key_ character varying(12),
  mjrddis integer,
  tambon_id integer,
  dtp6 integer,
  dtop15 integer,
  dbang integer,
  CONSTRAINT tambon_rivers_pkey PRIMARY KEY (objectid)
)
WITHOUT OIDS;
ALTER TABLE tambon_rivers OWNER TO victor;
GRANT ALL ON TABLE tambon_rivers TO thaiuser;
GRANT SELECT ON TABLE tambon_rivers TO thaireadonly;
GRANT SELECT ON TABLE tambon_rivers TO public;

-- Index: tambon_rivers_index

-- DROP INDEX tambon_rivers_index;

CREATE INDEX tambon_rivers_index
  ON tambon_rivers
  USING gist
  (the_geom);


