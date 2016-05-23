- view: l_country
  sql_table_name: public.l_country
  fields:

  - dimension: id
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.id


  - dimension: country
    sql: ${TABLE}.country

#   - measure: count
#     type: count
#     drill_fields: [id]

