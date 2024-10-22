WITH all_visitor_stats AS (
SELECT
    fullvisitorid,
    IF(
        COUNTIF(totals.transactions > 0
            AND
        totals.newVisits IS NULL) > 0, 1, 0
    ) AS will_buy_on_return_visit
    FROM
        `data-to-insights.ecommerce.web_analytics`
    GROUP BY
        fullvisitorid
)

SELECT
    COUNT(DISTINCT fullvisitorid) AS total_visitors,
    will_buy_on_return_visit
FROM
    all_visitor_stats
GROUP BY
    will_buy_on_return_visit;
