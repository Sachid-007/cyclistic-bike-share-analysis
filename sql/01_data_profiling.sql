SELECT COUNT(*) AS invalid_time_rows
FROM `cyclistic-data-482303.cyclistic_data.divvy_raw`
WHERE ended_at <= started_at;

SELECT
  MIN(TIMESTAMP_DIFF(ended_at, started_at, MINUTE)) AS min_minutes,
  MAX(TIMESTAMP_DIFF(ended_at, started_at, MINUTE)) AS max_minutes
FROM `cyclistic-data-482303.cyclistic_data.divvy_raw`;
