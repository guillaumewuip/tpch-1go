# Dockerfile
FROM wnameless/oracle-xe-11g


RUN apt-get update -y
RUN apt-get install -y git make gcc

RUN git clone https://github.com/dragansah/tpch-dbgen

RUN cd tpch-dbgen; make
RUN cd tpch-dbgen; \
    ./dbgen -s 1 -T P > part.tbl; \
    ./dbgen -s 1 -T c > customer.tbl; \
    ./dbgen -s 1 -T s > supplier.tbl; \
    ./dbgen -s 1 -T o > orders.tbl; \
    ./dbgen -s 1 -T n > nation.tbl; \
    ./dbgen -s 1 -T r > region.tbl; \
    ./dbgen -s 1 -T O > orders.tbl; \
    ./dbgen -s 1 -T L > lineitem.tbl; \
    ./dbgen -s 1 -T S > partuspp.tbl;

ADD create_table.sql /docker-entrypoint-initdb.d/
ADD generate_data.sh /docker-entrypoint-initdb.d/

ADD *.ctl /load_files/
