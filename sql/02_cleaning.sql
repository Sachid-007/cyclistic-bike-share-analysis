CREATE TABLE cyclistic-data-482303.cyclistic_data.divvy_clean_all AS
SELECT
*,
-- Creating the required ride_length column in minutes
TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length_m,
-- Creating the day_of_week column (1=Sun, 7=Sat)
EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week,
FORMAT_DATE(
'%b-%Y',
DATE(TIMESTAMP(started_at), "America/Chicago")
) AS ride_month

FROM
cyclistic-data-482303.cyclistic_data.divvy_raw
WHERE
-- Removing the -54 min error and "false starts"
TIMESTAMP_DIFF(ended_at, started_at, MINUTE) BETWEEN 2 AND 1440
-- Ensuring critical data is not null
AND started_at IS NOT NULL
AND ended_at IS NOT NULL
AND member_casual IS NOT NULL 
