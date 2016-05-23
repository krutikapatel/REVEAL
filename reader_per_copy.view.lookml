# - explore: reader_per_copy
      
- view: reader_per_copy
  derived_table:
    sql: |
       SELECT
          start_date,
          sum(reader_user_count * CASE
                WHEN tmp.region=14 THEN 2.92 --UK
                WHEN tmp.region=1 THEN 2.61 --CE
                WHEN tmp.region=4 THEN 3.46 --MEA
                WHEN tmp.region=3 THEN 3.55 --Asia & Pacific
                WHEN tmp.region=2 THEN 3.55 --North AMerica, South America, Central America
                ELSE 1 
                END) AS "economist_reader_per_copy_subscribers",
          SUM(((isnull(reader_user_count,0) * CASE
                WHEN tmp.region=14 THEN 2.92 --UK
                WHEN tmp.region=1 THEN 2.61 --CE
                WHEN tmp.region=4 THEN 3.46 --MEA
                WHEN tmp.region=3 THEN 3.55 --Asia & Pacific
                WHEN tmp.region=2 THEN 3.55 --North AMerica, South America, Central America
          ELSE 1 
                END) + unique_visitors )
          * CASE
            WHEN unduplicated_input.region=14 THEN 0.9023 
            WHEN unduplicated_input.region=1 THEN 0.8897 
                WHEN unduplicated_input.region=4 THEN 0.8582 
                WHEN unduplicated_input.region=10 THEN 0.8493
                WHEN unduplicated_input.region =3 THEN 0.8702
                WHEN unduplicated_input.region =2 THEN 0.9353
          ELSE 1 
            END) AS "unduplicated_customer_count"     
        FROM (
              SELECT 
                week_date_selector.week_date_selected AS "start_date",
                gcd_lcf.customerregion AS "region",
                COUNT(DISTINCT gcd_mor.urn) AS "reader_user_count"
              FROM public.gcd_mor AS gcd_mor
              LEFT JOIN public.gcd_mcd AS gcd_mcd ON gcd_mor.urn=gcd_mcd.urn
              LEFT JOIN public.gcd_mcg AS gcd_mcg ON gcd_mcd.countrycode=gcd_mcg.countrycode
              LEFT JOIN public.gcd_lcf AS gcd_lcf ON gcd_mcg.customersubregion=gcd_lcf.customersubregion
              CROSS JOIN ${week_date_selector.SQL_TABLE_NAME} week_date_selector
              WHERE 
                gcd_mor.productcode IN (228,12419,15419,15819,15779,15321)
                and gcd_mor.orderstatus in  (10,20,30,40,50,60,80,100,110,120)
                and dateadd(day,-7, dateexpiry ) >= week_date_selector.week_date_selected
                and gcd_mor.datestart <= week_date_selector.week_date_selected
             GROUP BY week_date_selector.week_date_selected,  gcd_lcf.customerregion
              ) tmp

        FULL OUTER JOIN ${unduplicated_input.SQL_TABLE_NAME} unduplicated_input
          ON tmp.start_date = unduplicated_input.hit_week and tmp.region = unduplicated_input.region
        WHERE start_date is not null
        GROUP BY start_date

#     sql_trigger_value: select count(*) from gcd_mor
#     sortkeys: [start_date]
    
# use mor mcd mcg tables instead of the hit_data.

  fields:
#   - filter: report_date
#     type: date

#   - measure: count
#     type: count
#     drill_fields: detail*
    
  - dimension: hit_week
    primary_key: true
    hidden: true
    type: string
    sql: ${TABLE}.start_date
    
  - dimension: end_hit_week
    hidden: true
    type: string
    sql: DATE(dateadd(day,7,start_date::DATE))::varchar
    
  - dimension: selected_week
    type: string
    sql: ${hit_week} || ' to ' || ${end_hit_week}
    
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