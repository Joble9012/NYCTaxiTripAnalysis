{{ config(materialized='table') }}
select
    trip_date,
    count(*) as total_trips,
    avg(trip_distance) as avg_distance,
    avg(total_amount) as avg_revenue
from {{ ref('stg_fhvhv_trips') }}
group by trip_date
order by trip_date