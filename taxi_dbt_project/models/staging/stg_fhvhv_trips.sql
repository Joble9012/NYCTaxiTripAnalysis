-- models/staging/stg_fhvhv_trips.sql
select
    pickup_datetime::DATE as trip_date,
    trip_miles as trip_distance,
    driver_pay + tips as total_amount,
    1 as passenger_count  -- if passenger count not in your dataset, use a placeholder
from read_parquet('/Users/joblethomas/Desktop/Projects/NYCTaxiTripAnalysis/taxi_dbt_project/data/fhvhv_tripdata_2026-01.parquet')