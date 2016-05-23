- view: unduplicated_input

  derived_table:
    sql: |
      SELECT 
        TO_CHAR(DATE_TRUNC('week', hit_data_combined.date_time),'YYYY-MM-DD') AS "hit_week",
        CASE WHEN region='UK' THEN 14
          WHEN region='CE' THEN 1
          WHEN region='MEA' THEN 4
          WHEN region in ('Asia (ex India)','India') THEN 3
          WHEN region in ('NA','USA', 'CAN') THEN 2
          WHEN region = 'LAAM' THEN 10
          ELSE 0
        END AS region,
        COUNT(DISTINCT CASE WHEN hit_data_combined.valid_user THEN hit_data_combined.visitor_id ELSE NULL END) AS "unique_visitors"
      FROM public.hit_data_combined hit_data_combined
      WHERE 
        hit_data_combined.source in ('Economist Online', 'Digital App')        
      GROUP BY 
        TO_CHAR(DATE_TRUNC('week', hit_data_combined.date_time),'YYYY-MM-DD'), 
        CASE WHEN region='UK' THEN 14
          WHEN region='CE' THEN 1
          WHEN region='MEA' THEN 4
          WHEN region in ('Asia (ex India)','India') THEN 3
          WHEN region in ('NA','USA', 'CAN') THEN 2
          WHEN region = 'LAAM' THEN 10
          ELSE 0
        END

    sortkeys: [hit_week]
    sql_trigger_value: SELECT 1

  fields:
    - dimension: hit_week
      type: string
      sql: ${TABLE}.hit_week
      
    - dimension: region
      type: string
      sql: ${TABLE}.region
    
    - dimension: unique_visitors
      type: number
      sql: ${TABLE}.unique_visitors
      
      
      