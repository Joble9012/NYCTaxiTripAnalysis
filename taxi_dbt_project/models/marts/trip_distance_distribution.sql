{{ config(materialized='table') }}
select
    trip_distance,
    count(*) as trips
from {{ ref('stg_fhvhv_trips') }}
group by trip_distance
order by trip_distance