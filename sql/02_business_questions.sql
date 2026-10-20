-- Business questions. Add a comment with your finding under each query.

-- Q1. Fail rate by facility type
SELECT facility_type,
       COUNT(*) AS inspections,
       ROUND(100.0 * SUM(CASE WHEN is_fail THEN 1 ELSE 0 END) / COUNT(*), 2) AS fail_rate_pct
FROM inspections
GROUP BY facility_type
HAVING COUNT(*) >= 100
ORDER BY fail_rate_pct DESC;
-- Finding:

-- Q2. Ten most common violations in failed inspections
SELECT v.violation_code, v.violation_desc, COUNT(*) AS times_cited
FROM violations v
JOIN inspections i ON i.inspection_id = v.inspection_id
WHERE i.is_fail
GROUP BY v.violation_code, v.violation_desc
ORDER BY times_cited DESC
LIMIT 10;
-- Finding:

-- Q3. Fail rate by year
-- TODO: use EXTRACT(YEAR FROM inspection_date)

-- Q4. ZIP codes with the highest fail rates (at least 50 inspections)
-- TODO

-- Q5. Businesses that failed 3 or more times (use a CTE)
WITH fails AS (
    SELECT license_no, dba_name, COUNT(*) AS fail_count
    FROM inspections
    WHERE is_fail AND license_no IS NOT NULL
    GROUP BY license_no, dba_name
)
SELECT *
FROM fails
WHERE fail_count >= 3
ORDER BY fail_count DESC
LIMIT 50;
-- Finding:

-- Q6. Rank facility types by fail rate within each risk level (window function)
-- TODO: build a CTE with fail rate per (risk, facility_type), then
--       RANK() OVER (PARTITION BY risk ORDER BY fail_rate_pct DESC)
