- view: l_search_engines
  sql_table_name: public.l_search_engines
  fields:

  - dimension: id
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.id


  - dimension: search_engines
    sql: ${TABLE}.search_engines

#   - measure: count
#     type: count
#     drill_fields: [id]

