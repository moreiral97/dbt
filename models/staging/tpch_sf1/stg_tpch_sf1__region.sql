WITH tbl_source AS (SELECT
                        *
                    FROM {{ source('src_tpch_sf1', 'region') }})
SELECT
    R_REGIONKEY as region_key
    , R_NAME as region_name
    , R_COMMENT as comment_region
FROM    tbl_source