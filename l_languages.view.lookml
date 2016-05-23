- view: l_languages
  sql_table_name: public.l_languages
  fields:

  - dimension: id
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.id


  - dimension: languages
    sql: ${TABLE}.languages

#   - measure: count
#     type: count
#     drill_fields: [id]

