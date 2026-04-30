 -- noqa: Should accept a string instead of a integer
    
    
    
    create table "postgres"."public"."first_table" ("id" bigint,"name" character varying,"age" bigint)
  ;
    -- dbt seed --
    
          insert into "postgres"."public"."first_table" ("id", "name", "age") values
          (%s,%s,%s),(%s,%s,%s),(%s,%s,%s)
      

;
  