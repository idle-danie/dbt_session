WITH u AS (
	SELECT * FROM {{ ref("dim_user") }}
), ue AS (
	SELECT * FROM {{ ref("fact_user_event") }}
) 
SELECT
	variant_id,
	ue.user_id,
	datestamp,
	age,
	gender,
COUNT(DISTINCT item_id) num_of_items, 
COUNT(DISTINCT CASE WHEN clicked THEN item_id END) num_of_clicks, 
SUM(purchased) num_of_purchases, 
SUM(paidamount) revenue 
FROM 
	ue 
LEFT JOIN u ON ue.user_id = u.user_id GROUP by 1, 2, 3, 4, 5