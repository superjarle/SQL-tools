-- BigQuery Billing Query
--
-- latest 100 charges

SELECT
    product,
    resource_type,
    start_time,
    end_time,
    cost,
    project_id,
    project_name,
    project_labels_key,
    currency,
    currency_conversion_rate,
    usage_amount,
    usage_unit
FROM
    `myproject.mydataset.imported_billing_data`
WHERE
    cost > 0
ORDER BY
    end_time DESC
LIMIT 100;
