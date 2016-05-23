- view: gcd_lpt
  sql_table_name: public.gcd_lpt
  fields:

  #- dimension: active
  #  type: number
  #  sql: ${TABLE}.active

  #- dimension: codecomment
  #  sql: ${TABLE}.codecomment

  #- dimension: codetextvalue
  #  sql: ${TABLE}.codetextvalue

 # - dimension_group: lastupdated
 #   type: time
 #   timeframes: [date, week, month]
 #   convert_tz: false
#    sql: ${TABLE}.lastupdated

  - dimension: producttype
    hidden: true
    type: number
    sql: ${TABLE}.producttype

  - dimension: product_type_desc
    sql: ${TABLE}.producttypedesc

#  - dimension: updateuser
 #   type: number
 #   sql: ${TABLE}.updateuser

#  - measure: count
 #   type: count
 #   drill_fields: []

