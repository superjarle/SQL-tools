
-- BigQuery Information Schema
--
-- Lists partitioned and/or clustered columns in a dataset
--
-- Processes 10MB of data when run


SELECT
    *
FROM
    -- XXX: replace bigquery-public-data.github_repos with myproject.mydataset
    `bigquery-public-data.github_repos.INFORMATION_SCHEMA.COLUMNS`
WHERE
    is_partitioning_column = 'YES'
        OR
    clustering_ordinal_position IS NOT NULL;
