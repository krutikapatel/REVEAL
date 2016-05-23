- view: gcd_mcg
  sql_table_name: public.gcd_mcg
  fields:

  - dimension: countrycode
    hidden: true
    type: number
    sql: ${TABLE}.countrycode

  - dimension: customersubregion
    hidden: true
    type: number
    sql: ${TABLE}.customersubregion

  - measure: count
    type: count
    drill_fields: []


