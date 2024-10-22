-- BigQuery Information Schema
--
-- Lists datasets in the current project along with their descriptions, sorted by last modified time
--
-- Processes 20MB

SELECT
    s.*,
    TIMESTAMP_DIFF(CURRENT_TIMESTAMP(), creation_time, DAY) AS days_live,
    option_value AS dataset_description
FROM
    -- XXX: can prefix INFORMATION_SCHEMA with your '<project_id>.' to select from another project, but defaulting to the current project is more convenient than editing this
    `INFORMATION_SCHEMA.SCHEMATA` AS s
    LEFT JOIN `INFORMATION_SCHEMA.SCHEMATA_OPTIONS` AS so
    USING (schema_name)
-- will miss all the datasets without descriptions like this
--WHERE
--    so.option_name = 'description'
ORDER BY
    last_modified_time DESC
LIMIT 15;
