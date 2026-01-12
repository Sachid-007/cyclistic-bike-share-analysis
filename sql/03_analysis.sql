Which month has the highest ride for member_casual
SELECT
  ride_month,
  SUM(CASE WHEN member_casual = 'member' THEN 1 ELSE 0 END) AS member_rides,
  SUM(CASE WHEN member_casual = 'casual' THEN 1 ELSE 0 END) AS casual_rides
FROM `cyclistic-data-482303.cyclistic_data.business_essentials`
GROUP BY ride_month
ORDER BY PARSE_DATE('%b-%Y', ride_month);

AVG ride duration for both groups
SELECT 
member_casual, 
AVG(ride_length_m) AS avg_ride_duration 
FROM cyclistic-data-482303.cyclistic_data.business_essentials 
GROUP BY member_casual

Which day of the week has the highest ride
SELECT 
member_casual, day_of_week, 
COUNT(*) AS total_rides
 FROM cyclistic-data-482303.cyclistic_data.business_essentials
  GROUP BY member_casual, day_of_week
   ORDER BY member_casual, day_of_week;

preferable bike type for both groups
SELECT 
member_casual, rideable_type,
 COUNT(*) AS total_rides
  FROM cyclistic-data-482303.cyclistic_data.business_essentials
   GROUP BY member_casual, rideable_type;
