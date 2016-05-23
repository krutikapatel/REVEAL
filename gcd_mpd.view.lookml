- view: gcd_mpd
  sql_table_name: public.gcd_mpd
  fields:

 # - dimension: active
  #  type: number
 #   sql: ${TABLE}.active

  - dimension: businessunitid
    hidden: true
    type: int
    sql: ${TABLE}.businessunitid

 # - dimension: codecomment
  #  sql: ${TABLE}.codecomment

 # - dimension: codetextvalue
  #  sql: ${TABLE}.codetextvalue

  - dimension: countrycode
    hidden: true
    type: number
    sql: ${TABLE}.countrycode

  - dimension: fulfilcode
    hidden: true
    sql: ${TABLE}.fulfilcode

 # - dimension_group: lastupdated
 #   type: time
  #  timeframes: [date, week, month]
 #   convert_tz: false
 #   sql: ${TABLE}.lastupdated

  - dimension: productcode
    hidden: true
    type: number
    sql: ${TABLE}.productcode

  - dimension_group: productdate
    hidden: true
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.productdate

  - dimension: product_desc
    sql: ${TABLE}.productdesc

  - dimension: productgroup
    hidden: true
    sql: ${TABLE}.productgroup

  - dimension: productlineid
    hidden: true
    type: int
    sql: ${TABLE}.productlineid

 # - dimension: productregion
#    type: number
#    sql: ${TABLE}.productregion

 # - dimension: revenuetype
 #   type: number
#    sql: ${TABLE}.revenuetype

 # - dimension: srchproductdesc
#    hidden: true
#    sql: ${TABLE}.srchproductdesc

 # - dimension: updateuser
 #   type: number
#    sql: ${TABLE}.updateuser

  - measure: count
    type: count
    drill_fields: []

