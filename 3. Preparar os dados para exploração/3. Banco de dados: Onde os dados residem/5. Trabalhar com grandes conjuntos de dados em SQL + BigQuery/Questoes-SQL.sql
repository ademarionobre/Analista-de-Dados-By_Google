
How many bike_ids have ended at "Moor Street, Soho"?

SELECT
   COUNT (DISTINCT bike_id) AS num_of_bikes
FROM
   `bigquery-public-data.london_bicycles.cycle_hire`
WHERE
   end_station_name = 'Moor Street, Soho';


What is the station_id for "Canton Street, Poplar"?

SELECT
   DISTINCT start_station_id --can also use end_station_id
FROM
   `bigquery-public-data.london_bicycles.cycle_hire`
WHERE
   start_station_name = 'Canton Street, Poplar' --can also use end_station_name

What is the name of the station whose ID is 111?

SELECT
   DISTINCT start_station_name --can also use end_station_name
FROM
   `bigquery-public-data.london_bicycles.cycle_hire`
WHERE
   start_station_id = 111 --can also use end_station_id


How many distinct bike_ids had trip durations greater than 2400 seconds (or 40 minutes)?

	SELECT
   COUNT(DISTINCT bike_id) AS num_of_bike_trips
FROM
   `bigquery-public-data.london_bicycles.cycle_hire`
WHERE
   duration > 2400 --schema indicates that trip duration is recorded in seconds
