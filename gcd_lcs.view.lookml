- view: gcd_lcs
  sql_table_name: public.gcd_lcs
  fields:

  - dimension: businessunitid
    type: int
    sql: ${TABLE}.businessunitid

 # - dimension: codecomment
 #   sql: ${TABLE}.codecomment

  #- dimension: codetextvalue
  #  sql: ${TABLE}.codetextvalue

  #- dimension: custmethdep
  #  type: number
   # sql: ${TABLE}.custmethdep

#  - dimension_group: lastupdated
#    type: time
#    timeframes: [date, week, month]
#    convert_tz: false
#    sql: ${TABLE}.lastupdated

 # - dimension: methodtype
 #   type: number
 #   sql: ${TABLE}.methodtype

 # - dimension: suppressiondefault
#    sql: ${TABLE}.suppressiondefault

  - dimension: suppressiondesc
    sql: ${TABLE}.suppressiondesc

  - dimension: suppressionid
    primary_key:  true
    type: int
    sql: ${TABLE}.suppressionid

 # - dimension: suppressionoverride
  #  type: number
  #  sql: ${TABLE}.suppressionoverride

  - dimension: suppressionseq
    type: number
    sql: ${TABLE}.suppressionseq

 # - dimension: updateuser
 #   type: number
  #  sql: ${TABLE}.updateuser

  - measure: count
    type: count
    drill_fields: []
    
 
          

