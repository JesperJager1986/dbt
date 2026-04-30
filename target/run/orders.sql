 -- noqa: Should accept a string instead of a integer
    
    
    
    create table "postgres"."public"."orders" ("id" bigint,"customer_id" bigint,"product_id" bigint,"quantity" bigint,"order_date" date)
  ;
    -- dbt seed --
    
          insert into "postgres"."public"."orders" ("id", "customer_id", "product_id", "quantity", "order_date") values
          (%s,%s,%s,%s,%s),(%s,%s,%s,%s,%s),(%s,%s,%s,%s,%s),(%s,%s,%s,%s,%s),(%s,%s,%s,%s,%s)
      

;
  