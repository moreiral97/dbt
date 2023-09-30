{{ config(materialized = 'table',)}}

WITH customer AS (SELECT
                    *
                  FROM  {{ ref('stg_tpch_sf1__customer') }})
, nation AS (SELECT
                *
             FROM   {{ ref('stg_tpch_sf1__nation') }})
, region AS (SELECT
                *
             FROM   {{ref('stg_tpch_sf1__region')}})
SELECT
    customer.cust_key
    , customer.cust_name
    , customer.cust_address
    , nation.nation_name
    , region.region_name
    , customer.cust_phone
FROM    customer
LEFT 
 JOIN   nation
        using(nation_key)
LEFT
 JOIN   region
        using(region_key)