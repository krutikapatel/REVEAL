- view: date_table
  derived_table:
    sql: |
        select date_trunc('day', getdate()) - (a.a + (10 * b.a) + (100 * c.a) + (1000 * d.a)) as series_date
        from (select 0 as a union all select 1 union all select 2 union all select 3 union all select 4 union 
        all select 5 union all select 6 union all select 7 union all select 8 union all select 9) as a
          cross join (select 0 as a union all select 1 union all select 2 union all select 3 union all select 4 
        union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) as b
          cross join (select 0 as a union all select 1 union all select 2 union all select 3 union all select 4 
        union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) as c
          cross join (select 0 as a union all select 1 union all select 2 union all select 3 union all select 4 
        union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) as d
        where current_date - (a.a + (10 * b.a) + (100 * c.a) + (1000 * d.a)) >= '2015-01-01'
        order by 1 
    sortkeys: [series_date]
    sql_trigger_value: SELECT 1

- view: week_date_selector
  derived_table:
    sql: |
      SELECT 
      DATE(DATE_TRUNC('week', series_date)) as week_date_selected
      FROM ${date_table.SQL_TABLE_NAME} as date_table
      WHERE {% condition hit_data_combined.clickstream_date %} series_date {% endcondition %}
      GROUP BY DATE(DATE_TRUNC('week', series_date))
      
  fields:

  - dimension: week_date_selected


#      -- WHERE {% condition hit_data_combined.clickstream_date %} series_date {% endcondition %}
#       -- WHERE {% condition reader_per_copy2.report_date %} date_table.series_date {% endcondition %}

# SELECT 
#       DATE(DATE_TRUNC('week', MIN(series_date))) as week_date_selected
#       FROM ${date_table.SQL_TABLE_NAME} as date_table
#       WHERE {% condition hit_data_combined.clickstream_date %} series_date {% endcondition %}
#       
      