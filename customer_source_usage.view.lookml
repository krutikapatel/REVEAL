
- view: customer_source_usage
  derived_table:
    sql: |
      SELECT 
        drupal_id,
        MAX(Economist_online) AS Economist_Online,
        MAX(Digital_app) AS Digital_app,
        MAX(Espresso) AS Espresso
      FROM (
            SELECT 
              drupal_id,
              CASE WHEN source = 'Economist Online' THEN 1 ELSE 0 END AS Economist_online,
              CASE WHEN source = 'Digital App' THEN 1 ELSE 0 END AS Digital_app,
              CASE WHEN source = 'Espresso' THEN 1 ELSE 0 END AS Espresso
            FROM public.hit_data_combined
            WHERE {% condition hit_data_combined.clickstream_date %} date_time {% endcondition %}
            GROUP by drupal_id, source
            ) tmp
      GROUP BY drupal_id
#     sql_trigger_value: select count(*) from public.hit_data_combined
#     sortkeys: [drupal_id]  

  fields:
#   - measure: count
#     type: count
#     drill_fields: detail*

  - dimension: drupal_id
    primary_key: true
    hidden: true
    type: string
    sql: ${TABLE}.drupal_id

  - dimension: economist_online
    hidden: true
    type: yesno
    sql: ${TABLE}.economist_online=1

  - dimension: digital_app
    hidden: true
    type: yesno
    sql: ${TABLE}.digital_app=1

  - dimension: espresso
    hidden: true
    type: yesno
    sql: ${TABLE}.espresso=1
    
  - dimension: digital_and_espresso_user
    type: yesno
    sql: ${digital_app} AND ${espresso} 

  sets:
    detail:
      - drupal_id
      - economist_online
      - digital_app
      - espresso

