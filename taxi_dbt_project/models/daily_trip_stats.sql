SELECT
    trip_date,
    COUNT(*) AS total_trips,
    AVG(trip_miles) AS avg_trip_distance,
    AVG(trip_minutes) AS avg_trip_duration
FROM {{ ref('stg_fhvhv_trips') }}
GROUP BY trip_date
ORDER BY trip_date