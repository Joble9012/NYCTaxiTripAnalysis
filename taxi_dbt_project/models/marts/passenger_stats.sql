{{ config(materialized='table') }}

select
    trip_date,
    count(*) as total_trips,
    cast(sum(passenger_count) as bigint) as total_passengers
from {{ ref('stg_fhvhv_trips') }}
group by trip_date
order by trip_date