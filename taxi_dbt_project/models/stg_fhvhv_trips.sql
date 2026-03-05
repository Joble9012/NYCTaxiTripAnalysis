SELECT
    hvfhs_license_num,
    pickup_datetime,
    dropoff_datetime,
    PULocationID,
    DOLocationID,
    trip_miles,
    trip_time,
    trip_time / 60 AS trip_minutes,
    DATE(pickup_datetime) AS trip_date
FROM {{ ref('source_taxi') }}