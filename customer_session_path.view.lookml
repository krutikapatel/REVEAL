
- view: customer_session_path
  derived_table:
    sql: |
      SELECT
        visit_id,
        drupal_id,
        min(date_time) as date_time,
        source, 
        lag(source,1) over (partition by drupal_id order by visit_id) AS previous_source
      FROM public.hit_data_combined AS hit_data_combined
      WHERE drupal_id is not null
        AND drupal_id<>0
        AND drupal_id<>''
      GROUP BY visit_id,
        drupal_id,
        source
    sortkeys: [visit_id]
    distkey: visit_id
    sql_trigger_value: select count(*) from public.hit_data_combined

  fields:
#   - measure: count
#     type: count
#     drill_fields: detail*

  - dimension: visit_id
    primary_key: true
    hidden: true
    type: string
    sql: ${TABLE}.visit_id

  - dimension: drupal_id
    hidden: true
    type: string
    sql: ${TABLE}.drupal_id

  - dimension: source
    hidden: true
    type: string
    sql: ${TABLE}.source

  - dimension: previous_source
    type: string
    sql: ${TABLE}.previous_source
    suggestions: [Economist Online, Digital App, Espresso]
    
  - dimension: same_previous_and_current_source
    type: yesno
    sql: ${previous_source}=${source}

  sets:
    detail:
      - visit_id
      - drupal_id
      - source
      - lag

