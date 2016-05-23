- view: gcd_lcf
  sql_table_name: public.gcd_lcf
  fields:

#  - dimension: active
#    type: number
#    sql: ${TABLE}.active

#  - dimension: codecomment
#    sql: ${TABLE}.codecomment

#  - dimension: codetextvalue
#    sql: ${TABLE}.codetextvalue

  - dimension: customerregion
    hidden: true
    type: number
    sql: ${TABLE}.customerregion

  - dimension: customersubregion
    hidden: true
    type: number
    sql: ${TABLE}.customersubregion

  - dimension: customer_subregion_desc
    sql: ${TABLE}.customersubregiondesc

 # - dimension_group: lastupdated
#    type: time
 #   timeframes: [date, week, month]
 #   convert_tz: false
  #  sql: ${TABLE}.lastupdated

 # - dimension: updateuser
 #   type: number
 #   sql: ${TABLE}.updateuser

  - measure: count
    type: count
    drill_fields: []

