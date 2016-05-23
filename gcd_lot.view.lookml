- view: gcd_lot
  sql_table_name: public.gcd_lot
  fields:

 # - dimension: active
 #   type: number
 #   sql: ${TABLE}.active

  #- dimension: codecomment
 #   sql: ${TABLE}.codecomment

 # - dimension: codetextvalue
 #   sql: ${TABLE}.codetextvalue

 # - dimension_group: lastupdated
 #   type: time
 #   timeframes: [date, week, month]
  #  convert_tz: false
 #   sql: ${TABLE}.lastupdated

  - dimension: ordertype
    hidden: true
    type: number
    sql: ${TABLE}.ordertype

  - dimension: order_type_desc
    description:  'Description for order type code'
    sql: ${TABLE}.ordertypedesc

#  - dimension: updateuser
#    type: number
#    sql: ${TABLE}.updateuser

  - measure: count
    type: count
    drill_fields: []

