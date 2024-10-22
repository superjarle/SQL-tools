
-- BigQuery Billing Query
--
-- products with highest aggregate cost

SELECT
    product,
    ROUND(SUM(cost), 2) AS total_cost
FROM
    `myproject.mydataset.imported_billing_data`
GROUP BY
    product
ORDER BY
    total_cost DESC;
