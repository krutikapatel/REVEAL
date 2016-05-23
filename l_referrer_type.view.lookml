- view: l_referrer_type
  sql_table_name: public.l_referrer_type
  fields:

  - dimension: id
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.id

  - dimension: referrer_type
    hidden: true
    sql: ${TABLE}.referrer_type

  - dimension: referrer_type_text
    sql: ${TABLE}.referrer_type_text

#   - measure: count
#     type: count
#     drill_fields: [id]

