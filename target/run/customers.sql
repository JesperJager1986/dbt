 -- noqa: Should accept a string instead of a integer
    
    
    
    create table "postgres"."public"."customers" ("id" bigint,"name" character varying,"city" character varying)
  ;
    -- dbt seed --
    
          insert into "postgres"."public"."customers" ("id", "name", "city") values
          (%s,%s,%s),(%s,%s,%s),(%s,%s,%s)
      

;
  