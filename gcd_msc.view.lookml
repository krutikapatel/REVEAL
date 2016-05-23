- view: gcd_msc
  sql_table_name: public.gcd_msc
  fields:

  #- dimension: active
  #  type: number
  #  sql: ${TABLE}.active

 # - dimension: codecomment
#    sql: ${TABLE}.codecomment

  #- dimension: codetextvalue
  #  sql: ${TABLE}.codetextvalue

  - dimension: countrycode
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.countrycode

  - dimension: countryname
    label:  "Country"
    sql: ${TABLE}.countryname

  #- dimension_group: lastupdated
  #  type: time
  #  timeframes: [date, week, month]
   # convert_tz: false
  #  sql: ${TABLE}.lastupdated

  #- dimension: updateuser
  #  type: number
  #  sql: ${TABLE}.updateuser

#   - measure: count
#     type: count
#     drill_fields: [countryname]

