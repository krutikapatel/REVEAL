- view: gcd_lct
  sql_table_name: public.gcd_lct
  fields:

  #- dimension: active
  #  type: number
  #  sql: ${TABLE}.active

  #- dimension: codecomment
  #  sql: ${TABLE}.codecomment

  #- dimension: codetextvalue
  #  sql: ${TABLE}.codetextvalue

  - dimension: customerstatus
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.customerstatus

  - dimension: customerstatusdesc
    label: "Status"
    sql: ${TABLE}.customerstatusdesc

 # - dimension_group: lastupdated
 #   type: time
 #   timeframes: [date, week, month]
 #   convert_tz: false
 #   sql: ${TABLE}.lastupdated

 # - dimension: updateuser
 #   type: number
 #   sql: ${TABLE}.updateuser

#   - measure: count
#     type: count
#     drill_fields: []

