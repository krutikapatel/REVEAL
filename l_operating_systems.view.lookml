- view: l_operating_systems
  sql_table_name: public.l_operating_systems
  fields:

  - dimension: id
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.id


  - dimension: operating_systems
    sql: ${TABLE}.operating_systems

#   - measure: count
#     type: count
#     drill_fields: [id]

