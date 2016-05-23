- view: l_javascript_version
  sql_table_name: public.l_javascript_version
  fields:

  - dimension: id
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.id


  - dimension: javascript_version
    sql: ${TABLE}.javascript_version

#   - measure: count
#     type: count
#     drill_fields: [id]

