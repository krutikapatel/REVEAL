- view: gcd_mmh
  sql_table_name: public.gcd_mmh
  fields:

  - dimension: businessunitid
    type: int
    sql: ${TABLE}.businessunitid

  - dimension: communicationtype
    type: number
    sql: ${TABLE}.communicationtype

  - dimension: contactcomments
    sql: ${TABLE}.contactcomments

  - dimension: departmentid
    type: int
    sql: ${TABLE}.departmentid

  - dimension_group: dropdate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.dropdate

  - dimension_group: mailingdate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.mailingdate

  - dimension: mailingid
    type: int
    sql: ${TABLE}.mailingid

  - dimension: mediatype
    type: number
    sql: ${TABLE}.mediatype

  - dimension: methodtype
    type: number
    sql: ${TABLE}.methodtype

  - dimension: promotioncost
    type: number
    sql: ${TABLE}.promotioncost

  - dimension: promotionid
    type: int
    sql: ${TABLE}.promotionid

  - dimension: regionid
    type: int
    sql: ${TABLE}.regionid

  - dimension_group: selectiondate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.selectiondate

  - dimension: selectionid
    type: int
    sql: ${TABLE}.selectionid

  - dimension: urn
    type: number
    sql: ${TABLE}.urn

  - dimension: userid
    sql: ${TABLE}.userid

  - dimension: userno
    type: number
    sql: ${TABLE}.userno

  - measure: count
    type: count
    drill_fields: []

