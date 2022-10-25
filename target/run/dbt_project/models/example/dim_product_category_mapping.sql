

  create or replace table `strong-host-359804`.`DBT`.`dim_product_category_mapping`
  
  
  OPTIONS()
  as (
    

with product_category as (
select * from `strong-host-359804`.`DBT`.`product_category_mapping`
)

select distinct
product_full_name
, category_name
from product_category

/*
{ config(materialized='view') }}

with product_category as (
select * from `strong-host-359804`.`DBT`.`product_category_mapping`
)

select distinct
product_full_name
, category_name
from product_category
*/
  );
  