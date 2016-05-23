- view: gcd_mpl
  sql_table_name: public.gcd_mpl
  fields:

 # - dimension: active
  #  type: number
 #   sql: ${TABLE}.active

 # - dimension: codecomment
 #   sql: ${TABLE}.codecomment

  #- dimension: codetextvalue
  #  sql: ${TABLE}.codetextvalue

  #- dimension_group: lastupdated
  #  type: time
  #  timeframes: [date, week, month]
  #  convert_tz: false
  #  sql: ${TABLE}.lastupdated

 # - dimension: productlineclass1
 #   sql: ${TABLE}.productlineclass1

 # - dimension: productlineclass2
  #  sql: ${TABLE}.productlineclass2

  - dimension: product_line_desc
    sql: ${TABLE}.productlinedesc

 # - dimension: productlinegroup
 #   sql: ${TABLE}.productlinegroup

  - dimension: productlineid
    hidden: true
    type: int
    sql: ${TABLE}.productlineid

 # - dimension: updateuser
  #  type: number
  #  sql: ${TABLE}.updateuser

 # - measure: count
 #   type: count
 #   drill_fields: []

