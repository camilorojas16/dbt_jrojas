{{ config(tags = ("dash_monthly_sales")) }}

SELECT 
    DCM.ID_CARMAKE,
    dsp.ID_SALESPERSON,
    FS.DDATE,
    FS.TOTALCOM,
    FS.TOTALSALE
FROM 
    {{ ref("int_monthly_sales_by_make")}} as FS 
LEFT JOIN 
    {{ ref("dim_carmake")}} as DCM on FS.carmake = DCM.carmake 
LEFT JOIN 
    {{ ref("dim_salesperson")}} as dsp on fs.salesperson = dsp.salesperson 