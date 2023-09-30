with tbl_customer as (select
                            *
                        from    {{source('src_tpch_sf1', 'customer')}})
select
    c_custkey AS cust_key
    , c_name AS cust_name
    , c_address AS cust_address
    , c_phone AS cust_phone
    , c_nationkey AS nation_key
from    tbl_customer