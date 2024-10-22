-- BigQuery Billing Query
--
-- commonly charged units of measure

SELECT
    usage_unit,
    COUNT(*) AS billing_records
FROM
    `myproject.mydata.imported_billing_data`
WHERE
    cost > 0
GROUP BY
    usage_unit
ORDER BY
    billing_records DESC;
