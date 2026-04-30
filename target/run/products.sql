 -- noqa: Should accept a string instead of a integer
    
    
    truncate table "postgres"."public"."products";
    -- dbt seed --
    
          insert into "postgres"."public"."products" ("id", "name", "price") values
          (%s,%s,%s),(%s,%s,%s),(%s,%s,%s)
      

;
  