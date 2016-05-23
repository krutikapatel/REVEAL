- view: gcd_lce
  sql_table_name: public.gcd_lce
  fields:

  - dimension: active
    type: number
    sql: ${TABLE}.active

  - dimension: businessunitid
    type: int
    sql: ${TABLE}.businessunitid

  - dimension: codecomment
    sql: ${TABLE}.codecomment

  - dimension: codetextvalue
    sql: ${TABLE}.codetextvalue

  - dimension: customerregion
    type: number
    sql: ${TABLE}.customerregion

  - dimension: customerregiondesc
    sql: ${TABLE}.customerregiondesc

  - dimension_group: lastupdated
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.lastupdated

  - dimension: updateuser
    type: number
    sql: ${TABLE}.updateuser

  - measure: count
    type: count
    drill_fields: []

