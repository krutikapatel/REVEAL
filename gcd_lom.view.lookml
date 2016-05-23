- view: gcd_lom
  sql_table_name: public.gcd_lom
  fields:

 # - dimension: active
 #   type: number
 #   sql: ${TABLE}.active

 # - dimension: codecomment
 #   sql: ${TABLE}.codecomment

 # - dimension: codetextvalue
 #   sql: ${TABLE}.codetextvalue

 # - dimension: currencyabbrev
 #   sql: ${TABLE}.currencyabbrev

  - dimension: currency
    sql: ${TABLE}.currencydesc

  - dimension: currencyid
    hidden: true
    type: int
    sql: ${TABLE}.currencyid

 # - dimension: exchangedollar
 #   type: number
 #   sql: ${TABLE}.exchangedollar

 # - dimension: exchangeeuro
#   type: number
 #   sql: ${TABLE}.exchangeeuro

 # - dimension: exchangesterling
 #   type: number
  #  sql: ${TABLE}.exchangesterling

 # - dimension_group: lastupdated
 #   type: time
  #  timeframes: [date, week, month]
 #   convert_tz: false
 #   sql: ${TABLE}.lastupdated

  #- dimension: updateuser
 #   type: number
  #  sql: ${TABLE}.updateuser

  - measure: count
    type: count
    drill_fields: []

