- view: l_browser_type
  sql_table_name: public.l_browser_type
  fields:

  - dimension: id
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.id

  - dimension: browser_type
    sql: ${TABLE}.browser_type

#   - measure: count
#     type: count
#     drill_fields: [id]

