- view: gcd_mcd
  sql_table_name: public.gcd_mcd
  fields:

 # - dimension: addressqualityflag
  #  type: number
 #   sql: ${TABLE}.addressqualityflag

  - dimension: addresstype
    hidden: true
    type: number
    sql: ${TABLE}.addresstype

 # - dimension: billtourn
 #   type: number
 #   sql: ${TABLE}.billtourn

  - dimension: bu_array
    hidden: true
    sql: ${TABLE}.buarray

  - dimension: company_id
    hidden: true
    type: int
    sql: ${TABLE}.companyid

  - dimension: companyname
    label: "Company Name"
    sql: ${TABLE}.companyname

  - dimension: countrycode
    hidden: true
    type: number
    sql: ${TABLE}.countrycode

  #- dimension: custcomment
  #  sql: ${TABLE}.custcomment

  - dimension: customerstatus
    hidden: true
    type: number
    sql: ${TABLE}.customerstatus

  - dimension: department
    label: "Department"
    sql: ${TABLE}.department

  #- dimension_group: gcdentrydate
  #  type: time
 #   timeframes: [date, week, month]
  #  convert_tz: false
   # sql: ${TABLE}.gcdentrydate

  - dimension: gender
    hidden: true
    type: int
    sql: ${TABLE}.gender


  - dimension: job_title
    sql: ${TABLE}.jobtitle

  - dimension_group: last_activity
    type: time
    timeframes: [date, week, month, year, day_of_week]
    convert_tz: false
    sql: ${TABLE}.lastactivitydate

  - dimension_group: last_updated
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.lastupdated

 # - dimension: noanalyse
 #   type: number
 #   sql: ${TABLE}.noanalyse

  #- dimension: noselect
  #  type: number
  #  sql: ${TABLE}.noselect

  - dimension: numberofgifts
    label: "Number of Gifts"
    type: number
    sql: ${TABLE}.numberofgifts

#  - dimension: primaryflag
#    type: number
 #   sql: ${TABLE}.primaryflag

  - dimension: siteid
    hidden: true
    type: int
    sql: ${TABLE}.siteid

#  - dimension: srchcompanyname
#    sql: ${TABLE}.srchcompanyname

  - dimension: state_county
    sql: ${TABLE}.statecounty

#   - dimension_group: suppdate1
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate1
# 
#   - dimension_group: suppdate10
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate10
# 
#   - dimension_group: suppdate11
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate11
# 
#   - dimension_group: suppdate12
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate12

#   - dimension_group: suppdate13
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate13
# 
#   - dimension_group: suppdate14
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate14
# 
#   - dimension_group: suppdate15
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate15
# 
#   - dimension_group: suppdate16
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate16
# 
#   - dimension_group: suppdate17
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate17
# 
#   - dimension_group: suppdate18
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate18

#   - dimension_group: suppdate19
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate19
# 
#   - dimension_group: suppdate2
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate2
# 
#   - dimension_group: suppdate20
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate20
# 
#   - dimension_group: suppdate21
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate21
# 
#   - dimension_group: suppdate22
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate22
# 
#   - dimension_group: suppdate23
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate23
# 
#   - dimension_group: suppdate24
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate24
# 
#   - dimension_group: suppdate25
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate25
# 
#   - dimension_group: suppdate26
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate26
# 
#   - dimension_group: suppdate27
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate27
# 
#   - dimension_group: suppdate28
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate28
# 
#   - dimension_group: suppdate29
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate29
# 
#   - dimension_group: suppdate3
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate3
# 
#   - dimension_group: suppdate30
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate30
# 
#   - dimension_group: suppdate31
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate31
# 
#   - dimension_group: suppdate32
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate32
# 
#   - dimension_group: suppdate33
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate33

#   - dimension_group: suppdate34
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate34
# 
#   - dimension_group: suppdate35
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate35
# 
#   - dimension_group: suppdate36
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate36
# 
#   - dimension_group: suppdate37
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate37
# 
#   - dimension_group: suppdate38
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate38
# 
#   - dimension_group: suppdate39
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate39
# 
#   - dimension_group: suppdate4
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate4
# 
#   - dimension_group: suppdate40
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate40
# 
#   - dimension_group: suppdate5
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate5
# 
#   - dimension_group: suppdate6
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate6
# 
#   - dimension_group: suppdate7
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate7
# 
#   - dimension_group: suppdate8
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate8
# 
#   - dimension_group: suppdate9
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.suppdate9

  - dimension: suppressionarray
    hidden: true
    sql: ${TABLE}.suppressionarray

  - dimension: title
    sql: ${TABLE}.title

 # - dimension: updateuser
#    type: number
#    sql: ${TABLE}.updateuser

  - dimension: urn
    type: number
    primary_key:  true
    hidden: true
    sql: ${TABLE}.urn

  - dimension: value_ukp_lifetime_any
    type: number
    sql: ${TABLE}.valueukplifetimeany

  - dimension: value_usd_lifetime_any
    type: number
    sql: ${TABLE}.valueusdlifetimeany
    value_format: '$#,##0.0'
    
  - measure: total_value_ukp_lifetime_any
    type: sum
    sql: ${value_ukp_lifetime_any}
    value_format: '"£"#,##0.0'

  - measure: total_value_usd_lifetime_any
    type: sum
    sql: ${value_usd_lifetime_any}
  
  - dimension: do_not_mail
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},1,1)='Y'
  

    
  - dimension: do_not_telephone
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},2,1)='Y'
    
  - dimension: do_not_fax
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},3,1)='Y'  
    
  - dimension: do_not_swap_internal
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},4,1)='Y'  
    
  - dimension: do_not_swap_external
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},5,1)='Y'  
  
  - dimension: do_not_contact
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},6,1)='Y'
  
  - dimension: do_not_email_eiu
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},7,1)='Y'

  - dimension: do_not_email_eco
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},8,1)='Y'
  
  - dimension: do_not_email_cco
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},9,1)='Y'  
  
  - dimension: do_not_contact_eiu
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},10,1)='Y'   
  
  - dimension: do_not_contact_eco
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},11,1)='Y'    
  
  - dimension: do_not_contact_cfo
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},12,1)='Y'    
    
  - dimension: deceased
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},13,1)='Y'   
  
  - dimension: staff
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},14,1)='Y'   
  
  - dimension: gone_away
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},15,1)='Y'   
  
 
  - dimension: do_not_email_ecom
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},16,1)='Y'   
  
  - dimension: do_not_contact_ecom
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},17,1)='Y'     
  
  - dimension: do_not_swap_email_internally
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},18,1)='Y'     
  
  - dimension: do_not_swap_email_enternally
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},19,1)='Y'
 
  - dimension: do_not_email_conferences
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},20,1)='Y' 
  
  - dimension: do_not_contact_conferences
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},21,1)='Y' 
  
  - dimension: do_not_swap_brands
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},22,1)='Y'   
  
  - dimension: email_goneaway
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},23,1)='Y'   

  - dimension: uk_mps_listed
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},24,1)='Y'  
  
  - dimension: do_not_contact_cfo_com
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},25,1)='Y' 
  
  - dimension: do_not_email_cfo
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},26,1)='Y'
  
  - dimension: do_not_mail_eco 
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},27,1)='Y'
  
  - dimension: do_not_tele_eco 
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},28,1)='Y'
  
  - dimension: do_not_sms_eco 
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},29,1)='Y'
  
  
  - dimension: do_not_swap_mail_internally 
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},30,1)='Y'
  
  - dimension: do_not_swap_tele_internally 
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},31,1)='Y' 
  
  - dimension: do_not_swap_mail_externally 
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},32,1)='Y'   
  
  - dimension: do_not_swap_tele_externally 
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},33,1)='Y'
  
  - dimension: do_not_mail_econgroup 
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},34,1)='Y'
    
  - dimension: do_not_email_econgroup 
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},35,1)='Y' 
  
  - dimension: do_not_mail_european_voice 
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},36,1)='Y'
  
  - dimension: do_not_email_european_voice 
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},37,1)='Y' 
  
  - dimension: do_not_email_eurofinance 
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},38,1)='Y'   
  
  - dimension: do_not_email_cq_roll_call 
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},39,1)='Y'  
  
  - dimension: email_goneaway_softbounces
    view_label: "Suppressions"
    type: yesno
    sql: substring(${suppressionarray},40,1)='Y'  
  
  ##RPC Subscriber Dimensions
# 
#   - dimension: uk
#     view_label: "Readers Per Copy Multipliers"
#     type: number
#     decimals: 2
#     sql:  (SELECT 2.92)
#     
#   - dimension: central_europe
#     view_label: "Readers Per Copy Multipliers"
#     type: number
#     decimals: 2
#     sql:  (SELECT 2.61)
#   
#   - dimension: middle_east_and_africa
#     view_label: "Readers Per Copy Multipliers"
#     type: number
#     decimals: 2
#     sql:  (SELECT 3.46)
#   
#   - dimension: asia_and_pacific_ex_india
#     view_label: "Readers Per Copy Multipliers"
#     type: number
#     decimals: 2
#     sql:  (SELECT 3.55)
#   
#   - dimension: india
#     view_label: "Readers Per Copy Multipliers"
#     type: number
#     decimals: 2
#     sql:  (SELECT 3.55)
#   
#   - dimension: north_america
#     view_label: "Readers Per Copy Multipliers"
#     type: number
#     decimals: 2
#     sql:  SELECT(3.55)
#   
#   - dimension: latin_america
#     view_label: "Readers Per Copy Multipliers"
#     type: number
#     decimals: 2
#     sql:  (SELECT 3.55)
#     
  ###MEASURES
  - measure: customer_count
    type: count
    drill_fields: [companyname, srchcompanyname]

