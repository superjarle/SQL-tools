-- BigQuery Billing Query
--
-- products with most billing records

SELECT
    product,
    COUNT(*) AS billing_records
FROM
    `myproject.mydataset.imported_billing_data`
GROUP BY
    product
ORDER BY
    billing_records DESC;
