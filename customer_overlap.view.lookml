- view: customer_overlap
  derived_table:
    sql: |  
      SELECT 
        hit_timeframe,
        overlap_by, 
        SUM(Economist_online+Digital_app+Espresso) AS source_count,
        SUM(Economist_online) AS Economist_online,
        SUM(Digital_app) AS Digital_app,
        SUM(Espresso) AS Espresso
      FROM (
        SELECT
          CASE
            WHEN {% parameter date_segments %} = 'Day' THEN TO_CHAR(DATE(hit_data_combined.date_time),'YYYY-MM-DD')
            WHEN {% parameter date_segments %} = 'Week' THEN TO_CHAR(DATE_TRUNC('week', hit_data_combined.date_time),'YYYY-MM-DD')
            WHEN {% parameter date_segments %} = 'Month' THEN TO_CHAR(hit_data_combined.date_time, 'YYYY-MM')
            WHEN {% parameter date_segments %} = 'Year' THEN TO_CHAR(DATE_PART(year, hit_data_combined.date_time),'YYYY')
            WHEN {% parameter date_segments %} = 'Total' THEN 'Total'
          END as hit_timeframe,
          CASE
            WHEN {% parameter overlap_by %} = 'Drupal ID' THEN drupal_id::VARCHAR
            WHEN {% parameter overlap_by %} = 'Browser' THEN browser::VARCHAR
            WHEN {% parameter overlap_by %} = 'IP' THEN ip::VARCHAR
          END as overlap_by,
          source,
          CASE WHEN source = 'Economist Online' THEN 1 ELSE 0 END AS Economist_online,
          CASE WHEN source = 'Digital App' THEN 1 ELSE 0 END AS Digital_app,
          CASE WHEN source = 'Espresso' THEN 1 ELSE 0 END AS Espresso
        FROM public.hit_data_combined hit_data_combined
        WHERE {% condition timeframe %} date_time {% endcondition %}
        and CASE
            WHEN {% parameter overlap_by %} = 'Drupal ID' THEN drupal_id::VARCHAR
            WHEN {% parameter overlap_by %} = 'Browser' THEN browser::VARCHAR
            WHEN {% parameter overlap_by %} = 'IP' THEN ip::VARCHAR
          END <>''
        GROUP BY hit_timeframe, overlap_by, source) tmp
      GROUP BY hit_timeframe, overlap_by

  fields:
  
  - filter: date_segments
    type: string
    suggestions: [Day, Week, Month, Year, Total]
  
  - filter: timeframe
    type: date
    
  - filter: overlap_by
    type: string
    suggestions: ['Drupal ID', 'Browser', 'IP']
    
  - dimension: date
    type: string
    sql: ${TABLE}.hit_timeframe
  
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: overlap
    hidden: true
    type: string
    sql: ${TABLE}.overlap_by
    
  - dimension: source_count
    hidden: true
    type: number
    sql: ${TABLE}.source_count
    
  - dimension: digital_app
    type: yesno
    sql: ${TABLE}.Digital_app = 1
    
  - dimension: economist_online
    type: yesno
    sql: ${TABLE}.Economist_online = 1
    
  - dimension: espresso
    type: yesno
    sql: ${TABLE}.Espresso = 1
    
  - measure: 3_sources_overlap
    type: count_distinct
    sql: ${overlap}
    filters:
      source_count: 3
      
  - measure: 2_sources_overlap
    type: count_distinct
    sql: ${overlap}
    filters:
      source_count: 2
      
  - measure: no_overlap
    type: count_distinct
    sql: ${overlap}
    filters:
      source_count: 1
      
  - measure: digital_online_overlap
    type: count_distinct
    sql: ${overlap}
    filters:
      economist_online: Yes
      digital_app: Yes
      espresso: No
      
  - measure: digital_espresso_overlap
    type: count_distinct
    sql: ${overlap}
    filters:
      economist_online: No
      digital_app: Yes
      espresso: Yes

  - measure: online_digital_espresso_overlap
    type: count_distinct
    sql: ${overlap}
    filters:
      economist_online: Yes
      digital_app: Yes
      espresso: Yes

  - measure: online_espresso_overlap
    type: count_distinct
    sql: ${overlap}
    filters:
      economist_online: Yes
      digital_app: No
      espresso: Yes



  sets:
    detail:
      - visitor_id
      - source


