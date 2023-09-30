WITH tbl_source AS (SELECT
                        *
                    FROM {{ source('src_tpch_sf1', 'nation') }})
SELECT
    n_nationkey AS nation_key
    , n_name AS nation_name
    , N_REGIONKEY as region_key
FROM    tbl_source