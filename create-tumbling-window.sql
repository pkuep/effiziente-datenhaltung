-- Anlegen eines Dataflow-Jobs mittels SQL über die BigQuery-Engine
select 
   region,
   state,
   product_name,
   product_group_name,
   TUMBLE_START("INTERVAL 10 SECOND") AS interval_start,  -- Intervallstart anzeigen
   SUM(sales_value) as interval_sum_of_sales
from pubsub.topic.`pk-hska`.`basket-stream`
group by region, state, product_name, product_group_name,
   TUMBLE(event_timestamp, "INTERVAL 10 SECOND")  -- Tumbling Window Gruppierung