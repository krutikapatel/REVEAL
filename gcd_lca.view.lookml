- view: gcd_lca
  sql_table_name: public.gcd_lca
  fields:

  - dimension: active
    type: number
    sql: ${TABLE}.active

  - dimension: assignedby
    type: number
    sql: ${TABLE}.assignedby

  - dimension: attributedesc
    sql: ${TABLE}.attributedesc

  - dimension: attributeid
    type: int
    sql: ${TABLE}.attributeid

  - dimension: attributelevel
    type: number
    sql: ${TABLE}.attributelevel

  - dimension: codecomment
    sql: ${TABLE}.codecomment

  - dimension: codetextvalue
    sql: ${TABLE}.codetextvalue

  - dimension: keyvalue
    type: number
    sql: ${TABLE}.keyvalue

  - dimension_group: lastupdated
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.lastupdated

  - dimension: multiselect
    type: number
    sql: ${TABLE}.multiselect

  - dimension: parent0
    type: number
    sql: ${TABLE}.parent0

  - dimension: parent1
    type: number
    sql: ${TABLE}.parent1

  - dimension: parent2
    type: number
    sql: ${TABLE}.parent2

  - dimension: tree0
    type: number
    sql: ${TABLE}.tree0

  - dimension: tree1
    type: number
    sql: ${TABLE}.tree1

  - dimension: tree2
    type: number
    sql: ${TABLE}.tree2

  - dimension: tree3
    type: number
    sql: ${TABLE}.tree3

  - dimension: updateuser
    type: number
    sql: ${TABLE}.updateuser

  - measure: count
    type: count
    drill_fields: []

