- view: gcd_customer_info
  sql_table_name: public.gcd_customer_info
  fields:

  - dimension: accept_mail_from_dotcom
    type: string
    sql: ${TABLE}.accept_mail_from_dotcom

  - dimension: accept_mail_from_eiu
    type: string
    sql: ${TABLE}.accept_mail_from_eiu

  - dimension: accept_mail_from_group
    type: string
    sql: ${TABLE}.accept_mail_from_group

  - dimension: country_id
    hidden: true
    type: int
    sql: ${TABLE}.country_id

  - dimension_group: created
    type: time
    timeframes: [date, week, month, year]
    convert_tz: false
    sql: ${TABLE}.created

  - dimension: email_status_id
    hidden: true
    type: int
    sql: ${TABLE}.email_status_id

  - dimension: gender
    type: string
    sql: ${TABLE}.gender

  - dimension: industry_id
    hidden: true
    type: int
    sql: ${TABLE}.industry_id

  - dimension: job_function_id
    hidden: true
    type: int
    sql: ${TABLE}.job_function_id

  - dimension: job_title_id
    hidden: true
    type: int
    sql: ${TABLE}.job_title_id

  - dimension_group: login
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.login

#   - dimension_group: modified
#     hidden: true
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.modified

  - dimension: drupal_id #This is the Drupal ID
#     hidden: true
    type: string
    sql: ${TABLE}.uid

  - dimension: year_of_birth
    type: number
    sql: ${TABLE}.year_of_birth

  - measure: count
    type: count
    drill_fields: []

