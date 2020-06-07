-- diese Query sollte mit dem Vorwissen bereits verstanden werden
select
   region,
   state,
   product_name,
   product_group_name,
   SUM(sales_value) as interval_sum_of_sales
from basket-sales-table
group by region, state, product_name, product_group_name