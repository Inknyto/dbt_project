-- models/my_model.sql

{{ config(materialized='table') }}

with source_data as (
    select
        'Sample Title 1' as title,
        'Sample Location 1' as location,
        100.00 as price,
        'https://example.com/sample1.jpg' as image
    limit 0
)

select
*
from source_data
