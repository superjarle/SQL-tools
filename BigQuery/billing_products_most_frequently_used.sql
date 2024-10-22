-- BigQuery Billing Query
--
-- most frequently used products costing more than 1 dollar

SELECT
    product,
    COUNT(*) AS billing_records
FROM
    `myproject.mydataset.imported_billing_data`
WHERE
    cost > 1
GROUP BY
    product
ORDER BY
    billing_records DESC;
