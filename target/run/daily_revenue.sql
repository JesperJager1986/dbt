
      
        
        
        delete from "postgres"."public"."daily_revenue" as DBT_INTERNAL_DEST
        where (order_date) in (
            select distinct order_date
            from "daily_revenue__dbt_tmp104011098432900" as DBT_INTERNAL_SOURCE
        );

    

    insert into "postgres"."public"."daily_revenue" ("order_date", "total_orders", "total_revenue")
    (
        select "order_date", "total_orders", "total_revenue"
        from "daily_revenue__dbt_tmp104011098432900"
    )
  