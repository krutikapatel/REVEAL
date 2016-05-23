- view: gcd_mbd
  sql_table_name: public.gcd_mbd
  fields:

 # - dimension: active
 #   type: number
 #   sql: ${TABLE}.active

 # - dimension: buflagsequence
 #  type: number
 #   sql: ${TABLE}.buflagsequence

  - dimension: businessunitid
    hidden: true
    type: int
    sql: ${TABLE}.businessunitid

  - dimension: business_unit_name
    sql: ${TABLE}.businessunitname

  #- dimension: codecomment
 #   sql: ${TABLE}.codecomment

  #- dimension: codetextvalue
  #  sql: ${TABLE}.codetextvalue

  #- dimension_group: lastupdated
  #  type: time
  #  timeframes: [date, week, month]
   # convert_tz: false
  #  sql: ${TABLE}.lastupdated

  #- dimension: marketmgremail
   # sql: ${TABLE}.marketmgremail

  #- dimension: marketmgrname
   # sql: ${TABLE}.marketmgrname

  #- dimension: updateuser
  #  type: number
  #  sql: ${TABLE}.updateuser

  - measure: count
    type: count
    drill_fields: [businessunitname, marketmgrname]

