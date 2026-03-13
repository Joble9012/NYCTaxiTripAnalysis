{{ config(materialized='table') }}
select
    trip_distance,
    total_amount
from {{ ref('stg_fhvhv_trips') }}