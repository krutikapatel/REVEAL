- view: gcd_lcg
  sql_table_name: public.gcd_lcg
  fields:

#  - dimension: active
 #   type: number
#    sql: ${TABLE}.active

#  - dimension: codecomment
#    sql: ${TABLE}.codecomment

#  - dimension: codetextvalue
#    sql: ${TABLE}.codetextvalue

  - dimension: gender
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.Gender

  - dimension: gender_description
    label: "Gender"
    sql: ${TABLE}.genderdesc

 # - dimension_group: lastupdated
 #   type: time
 #   timeframes: [date, week, month]
#    convert_tz: false
#    sql: ${TABLE}.lastupdated

#  - dimension: updateuser
#    type: number
#    sql: ${TABLE}.updateuser

#   - measure: count
#     type: count
#     drill_fields: []

