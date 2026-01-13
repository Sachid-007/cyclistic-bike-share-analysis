Business Task-
The objective of this analysis is to understand how annual members and casual riders use Cyclistic bikes differently and to provide data-driven recommendations to increase the conversion of casual riders into annual members.
Data Source
This analysis uses 12 months of Cyclistic bike-share trip data (December 2024 – November 2025). The dataset contains approximately 5.3 million records, including –
ride_id, rideable_type, started_at, ended_at, start station name, start station id, end station name, end station id, start lat, start ing, end lat, end lng, member casual.
Data Cleaning & Preparation
The raw dataset contained invalid ride durations, missing user types, and inconsistent timestamps. To ensure data reliability, I created a cleaned dataset by:
•	removing rides with negative or zero durations
•	removing rides longer than 24 hours
•	ensuring all rides had valid start/end times and user types
•	creating derived features such as ride length (minutes), day of week, and ride month
Analysis
1.	Ride Duration-
Casual riders take trips that are nearly 65% longer on average (19.6 mins) compared to members (11.9 mins). Significantly longer trips on average than annual members, suggesting leisure-oriented usage compared to more utilitarian member trips.
2.	Day of Week Usage-
Members ride more frequently on weekdays, while casual riders show higher activity on weekends, indicating commuting versus recreational behavior.

3.	Monthly Trends-
Ridership for both user types increases from winter to summer, peaking in August, and declines toward the end of the year, demonstrating strong seasonality.

Bike Type Preference-
Electric bikes are the most used bike type for both members and casual riders, with members contributing higher overall ride volumes due to greater riding frequency.
Visualizations-
An interactive Tableau dashboard was created to visualize key patterns in ride duration, weekday usage, bike type preference, and seasonality.
https://public.tableau.com/views/CyclisticBike-ShareAnalysis_17682352436310/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
Key Insights-
•	Casual riders take longer rides and primarily ride on weekends.
•	Casual riders take longer rides and primarily ride on weekends.
•	Annual members ride more frequently and show stronger weekday usage.
•	Both user types exhibit strong seasonality, with peak usage in August.


Recommendations-
1.	 Launch summer-focused membership campaigns during peak months (July–August).

2.	 Introduce family membership plans to attract group and leisure riders.

3.	 Offer weekend-based membership promotions targeting casual riders’ peak usage days.

4.	Use usage-based nudges to convert frequent casual riders by highlighting cost savings.
