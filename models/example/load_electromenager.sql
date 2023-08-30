{{ config(materialized='table') }}

with source_data as (
    select * from electromenager
)




select nom_ap as Nom, prix_ap as Prix from source_data

