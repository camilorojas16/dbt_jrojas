{{ config(tags = ("dash_monthly_sales")) }}

SELECT 
    RANK() OVER(ORDER BY CARMAKE) AS ID_CARMAKE,
    CARMAKE
FROM 
    {{ ref("int_monthly_sales_by_make")}}
GROUP BY CARMAKE