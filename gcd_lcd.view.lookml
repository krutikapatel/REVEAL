- view: gcd_lcd
  sql_table_name: public.gcd_lcd
  fields:

 # - dimension: active
#    type: number
#    sql: ${TABLE}.active

  - dimension: addresstype
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.addresstype

  - dimension: addresstypedesc
    label: "Address Type"
    sql:  ${TABLE}.addresstypedesc

#  - dimension: codecomment
#    sql: ${TABLE}.codecomment

 # - dimension: codetextvalue
  #  sql: ${TABLE}.codetextvalue

 # - dimension_group: lastupdated
 #   type: time
  #  timeframes: [date, week, month]
 #   convert_tz: false
 #   sql: ${TABLE}.lastupdated

 # - dimension: updateuser
 #   type: number
#    sql: ${TABLE}.updateuser

#   - measure: count
#     type: count
#     drill_fields: []
# 
