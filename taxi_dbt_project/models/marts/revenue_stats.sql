{{ config(materialized='table') }}
select
    trip_date,
    sum(total_amount) as total_revenue
from {{ ref('stg_fhvhv_trips') }}
group by trip_date
order by trip_date