- view: gcd_mor
  sql_table_name: public.gcd_mor
  fields:

 # - dimension: acpheaderno
 #   sql: ${TABLE}.acpheaderno

 # - dimension: acporderflag
#    type: number
 #   sql: ${TABLE}.acporderflag

#  - dimension: agentorderflag
#    type: number
#    sql: ${TABLE}.agentorderflag

#  - dimension: billtocustomerid
#    sql: ${TABLE}.billtocustomerid

 # - dimension: billtoflag
 #   type: number
#    sql: ${TABLE}.billtoflag

  - dimension: businessunitid
    hidden: true
    type: int
    sql: ${TABLE}.businessunitid

  - dimension: copies_per_sub
    type: number
    sql: ${TABLE}.copiespersub

  - dimension: creditcardtype
    hidden: true
    type: number
    sql: ${TABLE}.creditcardtype

  - dimension: currencyid
    hidden: true
    type: int
    sql: ${TABLE}.currencyid


  - dimension_group: expiry
    type: time
    description:  "Expiry date of the subscription/product"
    timeframes: [date, week, month, year]
    convert_tz: false
    sql: ${TABLE}.dateexpiry

  - dimension_group: order_entered
    type: time
    description:  "Date order was entered into the source system"
    timeframes: [date, week, month, year]
    convert_tz: false
    sql: ${TABLE}.dateorderenter

  - dimension_group: start
    type: time
    description:  "Start date of the subscription/product"
    timeframes: [date, week, month, year]
    convert_tz: false
    sql: ${TABLE}.datestart
    
  - dimension_group: issue
    type: time
    timeframes: [date, week, month, year]
    convert_tz: false
    sql: ${TABLE}.issuedate

  - dimension: discount_agency
    type: number
    sql: ${TABLE}.discountagency

  - dimension: discount_qty
    type: number
    sql: ${TABLE}.discountqty

  - dimension: discount_special
    type: number
    sql: ${TABLE}.discountspecial
    
  - dimension: fiscal_year_id
#     hidden: true
    type: int
    sql: ${TABLE}.fiscalyearid

  - dimension: gcdorderflag
    hidden: true
    type: number
    sql: ${TABLE}.gcdorderflag

  - dimension: gift
    sql: ${TABLE}.gift

  - dimension: gross_value_payment_currency
    type: number
    sql: ${TABLE}.grsvaluepaymentcurr

  - dimension: net_value_gbp
    type: number
    sql: ${TABLE}.netvaluegbp
    value_format: '"£"#,##0.0'

  - dimension: net_value_payment_currency
    type: number
    sql: ${TABLE}.netvaluepaymentcurr

  - dimension: net_value_usd
    type: number
    sql: ${TABLE}.netvalueusd
    value_format: '$#,##0.0'

  - dimension: order_acquisition_type
    hidden: true
    type: number
    sql: ${TABLE}.orderacquisitiontype

  - dimension: order_format
    hidden: true
    type: number
    sql: ${TABLE}.orderformat

  - dimension: orderline
    hidden: true
    sql: ${TABLE}.orderline

  - dimension: order_number
    sql: ${TABLE}.ordernumber

  - dimension: orderplatform
    hidden: true
    type: number
    sql: ${TABLE}.orderplatform

  - dimension: orderstatus
    hidden: true
    type: number
    sql: ${TABLE}.orderstatus

  - dimension: ordertype
    hidden: true
    type: number
    sql: ${TABLE}.ordertype

  - dimension: orderurn
    primary_key:  true
    hidden: true
    type: number
    sql: ${TABLE}.orderurn

  - dimension: paymentmethod
    hidden: true
    type: int
    sql: ${TABLE}.paymentmethod

  - dimension: premium
    type: number
    sql: ${TABLE}.premium

  - dimension: productcode
    hidden: true
    type: number
    sql: ${TABLE}.productcode

  - dimension: productextract
    hidden: true
    sql: ${TABLE}.productextract

  - dimension: producttype
    hidden: true
    type: number
    sql: ${TABLE}.producttype

  - dimension: promo_code
    hidden: true
    sql: ${TABLE}.promocode

  - dimension: promo_code_orig
    hidden: true
    sql: ${TABLE}.promocodeorig

  - dimension: quantity
    type: number
    sql: ${TABLE}.quantity

  - dimension: renewals_sent
    type: number
    sql: ${TABLE}.renewalssent

  - dimension: revenuetype
    hidden: true
    type: number
    sql: ${TABLE}.revenuetype

  - dimension: salesperson
    hidden: true
    type: number
    sql: ${TABLE}.salesperson

  - dimension: sitelicences
    hidden: true
    type: number
    sql: ${TABLE}.sitelicences

  - dimension: sourcesystem
    hidden: true
    type: number
    sql: ${TABLE}.sourcesystem

  - dimension: subrenewed
    hidden: true
    type: number
    sql: ${TABLE}.subrenewed

  - dimension: urn
    hidden: true
    type: number
    sql: ${TABLE}.urn

  - dimension: vendoragent
    hidden: true
    type: number
    sql: ${TABLE}.vendoragent

  - measure: orders_count
    type: count
   # drill_fields: []
   
  - measure: total_net_value_gbp
    type: sum
    sql: ${net_value_gbp}
    value_format: '"£"#,##0.0'
    
  - measure: total_net_value_usd
    type: sum
    sql: ${net_value_usd}
    value_format: '$#,##0.0'

  - measure:  economist_subscriptions
    type: count
    filters:
      #gcd_mor.orderstatus:  20
      gcd_mor.productcode:  '228,15321,13620,15779,15322,15419,15420,15320,15819'
  
  - measure:  economist_subscribers
    type: count_distinct
    sql: ${urn}
    filters:
      #gcd_mor.orderstatus:  20
      gcd_mor.productcode:  '228,15321,13620,15779,15322,15419,15420,15320,15819'
      
  - measure:  economist_print_subscribers
    type: count_distinct
    sql: ${urn}
    filters:
      gcd_mor.productcode:  '228,12419,15419,15819,15779,15321'
  
  - measure:  active_economist_print_subscriptions
    type: count
    filters:
      gcd_mor.productcode:  '228,12419,15419,15819,15779,15321'
      gcd_mor.orderstatus:  '10,20,30,40,50,60,80,100,110,120' #playing around with different status's
  
  - measure:  economist_print_subscriptions
    type: count
    filters:
      gcd_mor.productcode:  '228,12419,15419,15819,15779,15321'
  
  
  - measure:  economist_digital_print_overlap_subscribers
    type: count_distinct
    sql: ${urn}
    filters:
      gcd_mor.productcode:  '228,15419,15819'
  
  - measure:  economist_print_only_and_registrations
    type: count
    filters:
      gcd_mor.productcode:  '228,12419,15419,15819,15779,15321'
      gcd_customer_info.drupal_id: '-NULL'
  
  
  
