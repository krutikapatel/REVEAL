- view: gcd_lop
  sql_table_name: public.gcd_lop
  fields:

#  - dimension: active
#    type: number
#    sql: ${TABLE}.active

#  - dimension: codecomment
#    sql: ${TABLE}.codecomment

#  - dimension: codetextvalue
#    sql: ${TABLE}.codetextvalue

 # - dimension_group: lastupdated
#    type: time
#    timeframes: [date, week, month]
 #   convert_tz: false
 #   sql: ${TABLE}.lastupdated

  - dimension: paymentmethod
    hidden: true
    type: int
    sql: ${TABLE}.paymentmethod

  - dimension: payment_method
    sql: ${TABLE}.paymentmethoddesc

#  - dimension: updateuser
#    type: number
#    sql: ${TABLE}.updateuser

  - measure: count
    type: count
    drill_fields: []

