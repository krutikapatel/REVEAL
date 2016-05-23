- view: gcd_mcm
  sql_table_name: public.gcd_mcm
  fields:

  #- dimension: changetype
  #  sql: ${TABLE}.changetype
  
  - dimension: gcd_mdm_pk
    primary_key: true
    hidden: true
    sql: ${customerkey}||'_'||${sourcesystem}

  - dimension: customerkey
#     hidden: true
    view_label: 'Customer'
    label: 'Drupal Id'
    sql: ${TABLE}.customerkey

 # - dimension_group: dateadded
 #   type: time
 #   timeframes: [date, week, month]
 #   convert_tz: false
 #   sql: ${TABLE}.dateadded

 # - dimension_group: lastchangedate
 #   type: time
 #   timeframes: [date, week, month]
 #   convert_tz: false
 #   sql: ${TABLE}.lastchangedate

#  - dimension: masterflag
 #   type: number
#    sql: ${TABLE}.masterflag

  - dimension: sourcesystem
    hidden: true
    type: number
    sql: ${TABLE}.sourcesystem

  - dimension: urn
    hidden: true
    type: number
    sql: ${TABLE}.urn

  - measure: count
    hidden: true
    type: count
    drill_fields: []

  
  
  
  
  
  

