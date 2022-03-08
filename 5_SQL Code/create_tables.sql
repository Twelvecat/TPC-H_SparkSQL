CREATE DATABASE IF NOT EXISTS TPCH;
USE TPCH;

CREATE TABLE NATION  (
    N_NATIONKEY  int,
    N_NAME       string,
    REGIONKEY  int,
    N_COMMENT    string)
    USING csv OPTIONS (PATH 'file:/root/5_Sql Code/nation.csv');

CREATE TABLE REGION  ( 
    R_REGIONKEY  int,
    R_NAME       string,
    R_COMMENT   string)
    USING csv OPTIONS (PATH 'file:/root/5_Sql Code/region.csv');

CREATE TABLE PART  ( 
    P_PARTKEY     int,
    P_NAME        string,
    P_MFGR        string,
    P_BRAND       string,
    P_TYPE        string,
    P_SIZE        int,
    P_CONTAINER  string,
    P_RETAILPRICE decimal(15,2),
    P_COMMENT     string )
    USING csv OPTIONS (PATH 'file:/root/5_Sql Code/part.csv');

CREATE TABLE SUPPLIER ( 
    S_SUPPKEY     int,
    S_NAME        string,
    S_ADDRESS     string,
    S_NATIONKEY   int,
    S_PHONE       string,
    S_ACCTBAL     decimal(15,2),
    S_COMMENT     string)
    USING csv OPTIONS (PATH 'file:/root/5_Sql Code/supplier.csv');

CREATE TABLE PARTSUPP ( 
    PS_PARTKEY     int,
    PS_SUPPKEY     int,
    PS_AVAILQTY    int,
    PS_SUPPLYCOST  decimal(15,2),
    PS_COMMENT     string)
    USING csv OPTIONS (PATH 'file:/root/5_Sql Code/partsupp.csv');

CREATE TABLE CUSTOMER ( 
    C_CUSTKEY     int,
    C_NAME        string,
    C_ADDRESS     string,
    C_NATIONKEY   int,
    C_PHONE       string,
    C_ACCTBAL     decimal(15,2),
    C_MKTSEGMENT string,
    C_COMMENT     string)
    USING csv OPTIONS (PATH 'file:/root/5_Sql Code/customer.csv');

CREATE TABLE ORDERS  ( 
    O_ORDERKEY       int,
    O_CUSTKEY        int,
    O_ORDERSTATUS    string,
    O_TOTALPRICE     decimal(15,2),
    O_ORDERDATE      date,
    O_ORDERPRIORITY  string,  
    O_CLERK          string, 
    O_SHIPPRIORITY   int,
    O_COMMENT        string)
    USING csv OPTIONS (PATH 'file:/root/5_Sql Code/orders.csv');

CREATE TABLE LINEITEM ( 
    L_ORDERKEY    int,
    L_PARTKEY     int,
    L_SUPPKEY     int,
    L_LINENUMBER  int,
    L_QUANTITY    decimal(15,2),
    L_EXTENDEDPRICE  decimal(15,2),
    L_DISCOUNT    decimal(15,2),
    L_TAX         decimal(15,2),
    L_RETURNFLAG  string,
    L_LINESTATUS  string,
    L_SHIPDATE    date,
    L_COMMITDATE  date,
    L_RECEIPTDATE date,
    L_SHIPINSTRUCT string,
    L_SHIPMODE    string,
    L_COMMENT      string)
    USING csv OPTIONS (PATH 'file:/root/5_Sql Code/lineitem.csv');

quit;