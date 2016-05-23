- view: visitor_counts

# Or, you could make this view a derived table, like this:
  derived_table:
    sql: |
      SELECT
        visitor_id
        , COUNT(DISTINCT visit_id) as number_of_visits_per_visitor
      FROM public.hit_data_combined
      GROUP BY visitor_id
    sql_trigger_value: select count(*) from public.hit_data_combined
    sortkeys: [visitor_id]

  fields:
#     Define your dimensions and measures here, like this:
    - dimension: visitor_id
      primary_key: true
      hidden: true
      type: string
      sql: ${TABLE}.visitor_id
      
    - dimension: number_of_visits_per_visitor_all_time
      type: number
      sql: ${TABLE}.number_of_visits_per_visitor
      
    - dimension: number_of_visits_per_visitor_all_time_tiers
      type: tier
      style: integer
      tiers: [1,2,3,4,5,10,25,50,100,200,500,1000,5000]
      sql: ${TABLE}.number_of_visits_per_visitor

#     - measure: unique_visitor_count
#       type: count_distinct
#       sql: ${visitor_id}
