-- mit dieser Query kann das aktuelle (letzte) Fenster abgerufen werden
select * from `pk-hska`.sales_baskets.live_sales_history
where interval_start = (
  select max(interval_start) from
  `pk-hska`.sales_baskets.live_sales_history
)