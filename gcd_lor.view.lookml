- view: gcd_lor
  sql_table_name: public.gcd_lor
  fields:

  #- dimension: active
  #  type: number
  #  sql: ${TABLE}.active

 # - dimension: codecomment
 #   sql: ${TABLE}.codecomment

  #- dimension: codetextvalue
  #  sql: ${TABLE}.codetextvalue

 # - dimension_group: lastupdated
 #   type: time
 #   timeframes: [date, week, month]
 #   convert_tz: false
 #   sql: ${TABLE}.lastupdated

  - dimension: revenuetype
    hidden: true
    type: number
    sql: ${TABLE}.revenuetype

#  - dimension: revenuetypeclass1
 #   sql: ${TABLE}.revenuetypeclass1

 # - dimension: revenuetypeclass2
  #  sql: ${TABLE}.revenuetypeclass2

  - dimension: revenue_type_desc
    sql: ${TABLE}.revenuetypedesc

 # - dimension: revenuetypegroup
 #   sql: ${TABLE}.revenuetypegroup

 # - dimension: updateuser
#    type: number
#    sql: ${TABLE}.updateuser

  - measure: count
    type: count
    drill_fields: []

