- view: reader_per_copy_old
  derived_table:
    sql: |
      SELECT
      hit_week,
      sum(reader_user_count * CASE
            WHEN source='Economist Online' AND region='UK' THEN 2.92 
            WHEN source='Economist Online' AND region='CE' THEN 2.61 
            WHEN source='Economist Online' AND region='MEA' THEN 3.46 
            WHEN source='Economist Online' AND region in ('Asia (ex India)','India','NA','LAAM', 'USA', 'CAN') THEN 3.55 
            WHEN source='Economist Online' THEN 1
            ELSE 0 
            END) AS "economist_reader_per_copy_subscribers",
      sum((reader_user_count+unique_visitors) * CASE
            WHEN region='UK' THEN 0.9023 
            WHEN region='CE' THEN 0.8897 
            WHEN region='MEA' THEN 0.8582 
            WHEN region='LAAM' THEN 0.8493
            WHEN region in ('Asia (ex India)','India') THEN 0.8702
            WHEN region in ('NA', 'USA', 'CAN') THEN 0.9353
            ELSE 1 
            END) AS "unduplicated_customer_count"
      FROM (
            SELECT 
              TO_CHAR(DATE_TRUNC('week', hit_data_combined.date_time),'YYYY-MM-DD') AS "hit_week",
              hit_data_combined.source AS "source",
              hit_data_combined.region AS "region",
              COUNT(DISTINCT CASE WHEN hit_data_combined.urn is not null THEN gcd_mor.urn ELSE NULL END) AS "reader_user_count",
              COUNT(DISTINCT CASE WHEN hit_data_combined.valid_user THEN hit_data_combined.visitor_id ELSE NULL END) AS "unique_visitors"
            FROM public.hit_data_combined hit_data_combined
            LEFT JOIN public.gcd_mor AS gcd_mor ON hit_data_combined.urn=gcd_mor.urn
            WHERE
            gcd_mor.productcode IN (228,12419,15419,15819,15779)
            and hit_data_combined.source in ('Economist Online', 'Digital App')
            GROUP BY TO_CHAR(DATE_TRUNC('week', hit_data_combined.date_time),'YYYY-MM-DD'),hit_data_combined.source, hit_data_combined.region
            ) tmp
      GROUP BY hit_week
    sql_trigger_value: select count(*) from public.hit_data_combined
    sortkeys: [hit_week]

  

# use mor mcd mcg tables instead of the hit_data.

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: hit_week
    primary_key: true
    type: string
    sql: ${TABLE}.hit_week

  - dimension: source
    type: string
    sql: ${TABLE}.source

  - measure: reader_per_copy_subscribers
    type: sum
    sql: ${TABLE}.economist_reader_per_copy_subscribers

  - measure: unduplicated_customer_count
    type: sum
    sql: ${TABLE}.unduplicated_customer_count

  sets:
    detail:
      - hit_data_combined_hit_week
      - hit_data_combined_source
      - gcd_mor_economist_reader_per_copy_subscribers

