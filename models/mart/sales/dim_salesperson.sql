{{ config(tags = ("dash_monthly_sales")) }}

SELECT 
    RANK() OVER(ORDER BY SALESPERSON) AS ID_SALESPERSON,
    SALESPERSON
FROM 
    {{ ref("int_monthly_sales_by_make")}}
GROUP BY SALESPERSON