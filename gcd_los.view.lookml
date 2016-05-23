- view: gcd_los
  sql_table_name: public.gcd_los
  fields:

 # - dimension: active
#   type: number
  #  sql: ${TABLE}.active

#  - dimension: codecomment
#    sql: ${TABLE}.codecomment

#  - dimension: codetextvalue
 #   sql: ${TABLE}.codetextvalue

 # - dimension_group: lastupdated
 #   type: time
 #   timeframes: [date, week, month]
 #   convert_tz: false
 #   sql: ${TABLE}.lastupdated

  - dimension: orderstatus
    hidden: true
    type: number
    sql: ${TABLE}.orderstatus

  - dimension: order_status_desc
    description:  "Status of order (active, expired, graced, etc)"
    sql: ${TABLE}.orderstatusdesc

 # - dimension: updateuser
 #   type: number
  #  sql: ${TABLE}.updateuser

  - measure: count
    type: count
    drill_fields: []

