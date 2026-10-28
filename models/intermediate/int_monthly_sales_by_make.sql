{{
    config(
        materialized = 'table',
        tags = ('int','sales','carmake')
    )
}}

SELECT 
    DATE_TRUNC('MONTH', DDATE) AS DDATE,
    SALESPERSON,
    CARMAKE,
    SUM(SALEPRICE - COMNEAR) AS TOTALSALE,
    SUM(COMNEAR) as TOTALCOM
FROM
    {{ ref("stg_sales_data_2020") }}
GROUP BY 1, 2, 3
