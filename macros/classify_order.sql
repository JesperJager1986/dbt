{% macro classify_order(amount_column) %}
    CASE
        WHEN {{ amount_column }} >= 1000 THEN 'Large'
        WHEN {{ amount_column }} >= 500  THEN 'Medium'
        ELSE 'Small'
    END
{% endmacro %}