

  create or replace view `strong-host-359804`.`DBT`.`fact_purchases`
  OPTIONS()
  as 

with purchases as
(
    SELECT *
    FROM `strong-host-359804`.`DBT`.`purchases`
)


SELECT DISTINCT
      purchase_order_purchase_order_number
    , purchase_order_reference_number
    , purchase_order_bill_to_location_id
    , purchase_order_bill_to_location_name
    , purchase_order_ship_to_location_id
    , purchase_order_ship_to_location_name
    , purchase_order_supplier_id
    , purchase_order_supplier_name
    , parse_date('%d/%m/%y',purchase_order_fulfilled_date) purchase_order_fulfilled_date
    , parse_date('%d/%m/%y',fulfilled_date) fulfilled_date
    , purchase_order_status_name
    , product_line_entry_id
    , product_variant_id
    , product_full_name
    , cast(ordered_quantity as numeric) ordered_quantity
    , cast(received_quantity as numeric) received_quantity
    , cast(difference_quantity as  numeric) difference_quantity
    , cast(price as  numeric) price
    , tax_name
    , cast(tax as  numeric) tax
    , cast(charge as  numeric) charge
    , cast(charge_tax as  numeric) charge_tax
    , cast(ordered_total as  numeric) ordered_total
    , cast(received_total as  numeric) received_total
    , cast(difference_total as  numeric) difference_total
    , purchase_order_updated_at
    , rnk
from purchases
order by purchase_order_purchase_order_number

*/


with purchases as
(
    SELECT *
    FROM `strong-host-359804`.`DBT`.`purchases`
)


SELECT DISTINCT
      purchase_order_purchase_order_number
    , purchase_order_reference_number
    , purchase_order_bill_to_location_id
    , purchase_order_bill_to_location_name
    , purchase_order_ship_to_location_id
    , purchase_order_ship_to_location_name
    , purchase_order_supplier_id
    , purchase_order_supplier_name
    , parse_date('%d/%m/%y',purchase_order_fulfilled_date) purchase_order_fulfilled_date
    , parse_date('%d/%m/%y',fulfilled_date) fulfilled_date
    , purchase_order_status_name
    , product_line_entry_id
    , product_variant_id
    , product_full_name
    , cast(ordered_quantity as numeric) ordered_quantity
    , cast(received_quantity as numeric) received_quantity
    , cast(difference_quantity as  numeric) difference_quantity
    , cast(price as  numeric) price
    , tax_name
    , cast(tax as  numeric) tax
    , cast(charge as  numeric) charge
    , cast(charge_tax as  numeric) charge_tax
    , cast(ordered_total as  numeric) ordered_total
    , cast(received_total as  numeric) received_total
    , cast(difference_total as  numeric) difference_total
    , purchase_order_updated_at
    , rnk
from purchases
order by purchase_order_purchase_order_number
/*;

