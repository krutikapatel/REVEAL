- view: l_event
  sql_table_name: public.l_event
  fields:

  - dimension: id
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.id

  - dimension: event
    sql: ${TABLE}.event

#   - measure: count
#     type: count
#     drill_fields: [id]

