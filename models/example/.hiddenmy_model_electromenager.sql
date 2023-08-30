-- models/my_model_electromenager.sql                                                                                         
                                                                                                                            
{{ config(materialized='table') }}                                                                                          
                                                                                                                            
with source_data as (                                                                                                       
    select *                                                                                                                
    from {{ source('source') }}.electromenager
)                                                                                                                           
                                                                                                                            
insert into {{ target('target') }}.my_model_electromenager                                                                  
select *                                                                                                                    
from source_data;                                                                                                           
