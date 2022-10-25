


with locations as
(
    select  distinct purchase_order_ship_to_location_name,purchase_order_bill_to_location_name
    from `strong-host-359804`.`DBT`.`purchases`
union all
    select distinct location_name
    from `strong-host-359804`.`DBT`.`location_mapping`

)

select distinct location_name
, (CASE
WHEN substr(location_name, 2 ,3) in ( "BLR", "CHN", "DEL", "GUR", "HYD", "MUM", "NOD", "PUN") THEN substr(order_location_name, 2 ,3)
ELSE ''
END) city
, (CASE
WHEN substr(location_name, 2 ,3) = "BLR" THEN "Bengaluru"
WHEN substr(location_name, 2 ,3) = "CHN" THEN "Chennai"
WHEN substr(location_name, 2 ,3) = "DEL" THEN "Delhi"
WHEN substr(location_name, 2 ,3) = "GUR" THEN "Gurugram"
WHEN substr(location_name, 2 ,3) = "HYD" THEN "Hyderabad"
WHEN substr(location_name, 2 ,3) = "MUM" THEN "Mumbai"
WHEN substr(location_name, 2 ,3) = "NOD" THEN "Noida"
WHEN substr(location_name, 2 ,3) = "PUN" THEN "Pune"
ELSE ''
END) city_name
from locations l