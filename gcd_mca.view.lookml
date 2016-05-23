- view: gcd_mca
  sql_table_name: public.gcd_mca
  fields:

  - dimension: attributeid
    type: int
    sql: ${TABLE}.attributeid

  - dimension: parent0
    type: number
    sql: ${TABLE}.parent0

  - dimension: parent1
    type: number
    sql: ${TABLE}.parent1

  - dimension: parent2
    type: number
    sql: ${TABLE}.parent2

  - dimension: parent3
    type: number
    sql: ${TABLE}.parent3

  - dimension: urn
    type: number
    sql: ${TABLE}.urn

  - measure: count
    type: count
    drill_fields: []

