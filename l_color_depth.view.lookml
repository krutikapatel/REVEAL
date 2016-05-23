- view: l_color_depth
  sql_table_name: public.l_color_depth
  fields:

  - dimension: id
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.id

  - dimension: color_depth
    sql: ${TABLE}.color_depth

#   - measure: count
#     type: count
#     drill_fields: [id]

