- view: campaign_header
  sql_table_name: public.gcd_ehd
  fields:

  - dimension: bureaucode1
    sql: ${TABLE}.bureaucode1

  - dimension: bureaucode2
    sql: ${TABLE}.bureaucode2

  - dimension: bureaucode3
    sql: ${TABLE}.bureaucode3

  - dimension: bureaucode4
    sql: ${TABLE}.bureaucode4

  - dimension: bureaucode5
    sql: ${TABLE}.bureaucode5

  - dimension: businessunitid
    type: int
    sql: ${TABLE}.businessunitid

  - dimension_group: closedate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.closedate

  - dimension: comments
    sql: ${TABLE}.comments

  - dimension: communicationtype
    type: number
    sql: ${TABLE}.communicationtype

  - dimension: departmentid
    type: int
    sql: ${TABLE}.departmentid

  - dimension_group: dropdate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.dropdate

  - dimension: extractfile
    sql: ${TABLE}.extractfile

  - dimension: generatehistory
    type: number
    sql: ${TABLE}.generatehistory

  - dimension: includeseeds
    type: number
    sql: ${TABLE}.includeseeds

  - dimension: listid
    type: int
    sql: ${TABLE}.listid

  - dimension: mediatype
    type: number
    sql: ${TABLE}.mediatype

  - dimension: methodtype
    type: number
    sql: ${TABLE}.methodtype

  - dimension: outputdesc
    sql: ${TABLE}.outputdesc

  - dimension: outputzippassword
    sql: ${TABLE}.outputzippassword

  - dimension: overridecustom
    sql: ${TABLE}.overridecustom

  - dimension: permissionremoved
    sql: ${TABLE}.permissionremoved

  - dimension: processflag
    type: number
    sql: ${TABLE}.processflag

  - dimension: promocode
    sql: ${TABLE}.promocode

  - dimension: promodesc
    sql: ${TABLE}.promodesc

  - dimension: promogroupid
    type: int
    sql: ${TABLE}.promogroupid

  - dimension: promotionid
    type: int
    sql: ${TABLE}.promotionid

  - dimension: regionid
    type: int
    sql: ${TABLE}.regionid

  - dimension: salesperson
    type: number
    sql: ${TABLE}.salesperson

  - dimension_group: selectiondate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.selectiondate

  - dimension: selectionid
    type: int
    sql: ${TABLE}.selectionid

  - dimension: selectiontype
    type: number
    sql: ${TABLE}.selectiontype

  - dimension: sendzippasswordemail
    sql: ${TABLE}.sendzippasswordemail

  - dimension: suppressionarray
    sql: ${TABLE}.suppressionarray

  - dimension: totalcostukp
    type: number
    sql: ${TABLE}.totalcostukp

  - dimension: totalcostusd
    type: number
    sql: ${TABLE}.totalcostusd

  - dimension: userno
    type: number
    sql: ${TABLE}.userno

  - measure: count
    type: count
    drill_fields: []

