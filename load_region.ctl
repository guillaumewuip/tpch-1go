 load data
 INFILE '/tpch-dbgen/region.tbl'
 INTO TABLE REGION
 APPEND
 FIELDS TERMINATED BY '|'
 ( R_REGIONKEY,
  R_NAME,
  R_COMMENT)
