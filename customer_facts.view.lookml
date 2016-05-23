- view: customer_facts
  derived_table:
    sql: |
      SELECT 
        visitor_id,
        MAX(drupal_id) as drupal_id,
        MIN(date_time) as first_visit_date, 
        MAX(date_time) as last_visit_date, 
        MIN(CASE WHEN registration=1 THEN date_time ELSE null END) AS registration_date, 
        MIN(CASE WHEN subscription_new=1 THEN date_time ELSE null END) AS new_subscription_date,
        MIN(CASE WHEN subscription_renew=1 THEN date_time ELSE null END) AS renew_subscription_date,
        COUNT(DISTINCT visit_id) as visits_count,
        COUNT(DISTINCT source) as source_count
      FROM public.hit_data_combined
      GROUP by visitor_id
    sql_trigger_value: select count(*) from public.hit_data_combined
    sortkeys: [visitor_id]
      

  fields:
    - dimension: visitor_id
      primary_key: true
      type: string
      sql: ${TABLE}.visitor_id
      
    - dimension: first_visit
      type: time
      timeframes: [raw,time, day_of_week, date, week, month, year]
      sql: ${TABLE}.first_visit_date
      
    - dimension: last_visit
      type: time
      timeframes: [time, day_of_week, date, week, month, year]
      sql: ${TABLE}.last_visit_date
      
    - dimension: registration
      type: time
      timeframes: [raw,time, day_of_week, date, week, month, year]
      sql: ${TABLE}.registration_date
      
    - dimension: subscription
      type: time
      timeframes: [raw,time, day_of_week, date, week, month, year]
      sql: ${TABLE}.subscription_date
      
    - dimension: first_visit_to_registration_days
      type: number
      sql: datediff(day, ${first_visit_raw},${registration_raw})
      
    - dimension: registration_to_subscription_days
      type: number
      sql: datediff(day, ${registration_raw},${subscription_raw})

    - measure: visits_count_average
      type: average
      sql: ${TABLE}.visits_count
      
    - measure: source_count_average
      type: average
      sql: ${TABLE}.source_count
      
    - measure: first_visit_to_registration_days_average
      type: average
      sql: ${first_visit_to_registration_days}
      value_format: '#,##0.0'
      
    - measure: registration_to_subscription_days_average
      type: average
      sql: ${registration_to_subscription_days}
      value_format: '#,##0.0'
      
      
      
      
      
      
