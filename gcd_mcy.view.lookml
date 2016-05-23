- view: gcd_mcy
  sql_table_name: public.gcd_mcy
  fields:

 # - dimension: codetextvalue
 #   sql: ${TABLE}.codetextvalue

  - dimension: sourcesystem
    hidden: true
    type: number
    sql: ${TABLE}.sourcesystem

  - dimension: source_system_name
    sql: ${TABLE}.sourcesystemname

  - measure: count
    type: count
    drill_fields: [sourcesystemname]

