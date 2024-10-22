-- BigQuery Information Schema
--
-- Lists columns and their details in a given dataset
--
-- Processes 10MB of data when run

-- https://cloud.google.com/bigquery/docs/tables#columns_view

SELECT
    table_catalog,
    table_schema,
    table_name,
    column_name,
    ordinal_position,
    is_nullable,
    data_type,
    is_generated,
    generation_expression,
    is_stored,
    is_hidden,
    is_updatable,
    is_system_defined,
    is_partitioning_column,
    clustering_ordinal_position
FROM
    -- XXX: replace bigquery-public-data.github_repos with myproject.mydataset
    `bigquery-public-data.github_repos.INFORMATION_SCHEMA.COLUMNS`;
