- view: sailthru
  sql_table_name: public.sailthru
  fields:

  - dimension: blast_id
    type: number
    sql: ${TABLE}.blast_id

  - dimension: campaign_name
    type: string
    sql: ${TABLE}.campaign_name

  - dimension_group: click
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.click_time

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension: country_id
    type: string
    sql: ${TABLE}.country_id

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date

  - dimension: device
    type: string
    sql: ${TABLE}.device

  - dimension: domain
    type: string
    sql: ${TABLE}.domain

  - dimension: email_hash
    type: string
    sql: ${TABLE}.email_hash

  - dimension: email_status
    type: string
    sql: ${TABLE}.email_status

  - dimension: engagement
    type: string
    sql: ${TABLE}.engagement

  - dimension: ext_id
    type: number
    sql: ${TABLE}.ext_id

  - dimension: first_ten_clicks
    type: string
    sql: ${TABLE}.first_ten_clicks

  - dimension: first_ten_clicks_time
    type: string
    sql: ${TABLE}.first_ten_clicks_time

  - dimension: gender
    type: string
    sql: ${TABLE}.gender

  - dimension: geolocation_city
    type: string
    sql: ${TABLE}.geolocation_city

  - dimension: geolocation_country
    type: string
    sql: ${TABLE}.geolocation_country

  - dimension: geolocation_state
    type: string
    sql: ${TABLE}.geolocation_state

  - dimension: job_title
    type: string
    sql: ${TABLE}.job_title

  - dimension_group: last_click
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_click

  - dimension_group: last_open
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_open

  - dimension: life_time_message
    type: number
    sql: ${TABLE}.life_time_message

  - dimension: list_data_loaded
    type: string
    sql: ${TABLE}.list_data_loaded

  - dimension: list_signup
    type: string
    sql: ${TABLE}.list_signup

  - dimension: list_used
    type: string
    sql: ${TABLE}.list_used

  - dimension: newsletter
    type: string
    sql: ${TABLE}.newsletter

  - dimension_group: open
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.open_time

  - dimension: open_total_count
    hidden: true
    type: number
    sql: ${TABLE}.open_total

  - dimension: page_views
    type: number
    sql: ${TABLE}.page_views

  - dimension_group: profile_created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.profile_created_date

  - dimension: profile_id
    type: string
    sql: ${TABLE}.profile_id

  - dimension_group: purchase
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.purchase_time

  - dimension: region
    type: string
    sql: ${TABLE}.region

  - dimension: region_cd
    type: string
    sql: ${TABLE}.region_cd

  - dimension_group: send
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.send_time

  - dimension: sent_count
    hidden: true
    type: number
    sql: ${TABLE}.sent_count

  - dimension_group: sign_up
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.sign_up

  - dimension: subject
    type: string
    sql: ${TABLE}.subject

  - dimension: top_device
    type: string
    sql: ${TABLE}.top_device

  - dimension: town
    type: string
    sql: ${TABLE}.town

  - dimension: uid
    type: number
    value_format_name: id
    sql: ${TABLE}.uid

  - dimension: urn
    type: number
    sql: ${TABLE}.urn

  - dimension: yob
    type: number
    sql: ${TABLE}.yob

  #- measure: source_count
  #  type: count
  
  - measure: drupal_id_distinct_count
    type: count_distinct
    sql: ${uid}
  
  - measure:  sent_total
    type: count
#     sql: ${date}
      
  - measure:  open_total
    type: count
    filters:
      sailthru.open_time: 'NOT NULL'
      
  - measure:  click_total
    type: count
    filters:
      sailthru.click_time:  'NOT NULL'
  
  -  measure: open_rate
     type: number
     sql: 1.00* ${open_total}/NULLIF(${sent_total},0)
     value_format: '#,##0.00'
  
  -  measure: click_rate
     type: number
     sql: 1.00* ${click_total}/NULLIF(${sent_total},0)
     value_format: '#,##0.00'
  
  -  measure:  unique_emails_sent
     type: count_distinct
     sql: ${email_hash}
   

