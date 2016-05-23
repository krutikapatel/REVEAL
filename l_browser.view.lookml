- view: l_browser
  sql_table_name: public.l_browser
  fields:

  - dimension: id
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.id

  - dimension: browser
    sql: ${TABLE}.browser

  - measure: count
    hidden: true
    type: count
    drill_fields: [id]

