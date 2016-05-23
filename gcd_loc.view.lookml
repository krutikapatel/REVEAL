- view: gcd_loc
  sql_table_name: public.gcd_loc
  fields:

 # - dimension: active
 #   type: number
 #   sql: ${TABLE}.active

 # - dimension: codecomment
 #   sql: ${TABLE}.codecomment

#  - dimension: codetextvalue
#    sql: ${TABLE}.codetextvalue

  - dimension: credit_card_desc
    sql: ${TABLE}.creditcarddesc

  - dimension: creditcardtype
    hidden: true
    type: number
    sql: ${TABLE}.creditcardtype

  #- dimension_group: lastupdated
  #  type: time
  #  timeframes: [date, week, month]
  #  convert_tz: false
 #   sql: ${TABLE}.lastupdated

#  - dimension: updateuser
  #  type: number
#    sql: ${TABLE}.updateuser

 # - measure: count
 #   type: count
 #   drill_fields: []

