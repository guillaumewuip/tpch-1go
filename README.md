tpch-1go
========

Oracle Express Edition 11g Release 2 on Ubuntu 16.04 LTS loaded with TPC-H data
(1 Go)

# Run the database

```
docker run -d -p 49160:22 -p 49161:1521 -e ORACLE_ALLOW_REMOTE=true guillaumewuip/tpch-1go
```

This is based on [wnameless/oracle-xe-11g](https://github.com/wnameless/docker-oracle-xe-11g).
See its [README](https://github.com/wnameless/docker-oracle-xe-11g) for more details.

