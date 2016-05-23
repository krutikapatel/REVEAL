- connection: dave_poc

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: gcd_mcd
  persist_for: 8 hours
  label: "Customer"
  view_label: "Customer"
  joins:
    - join: gcd_lcg
      view_label: "Customer"
      sql_on: ${gcd_mcd.gender}=${gcd_lcg.gender}
      relationship: many_to_one
      
    - join: gcd_msc
      view_label: "Customer"
      sql_on: ${gcd_mcd.countrycode}=${gcd_msc.countrycode}
      relationship: many_to_one

    - join: gcd_mcg
      view_label: "Customer"
      sql_on: ${gcd_mcd.countrycode}=${gcd_msc.countrycode}
      relationship: many_to_one
      
    - join: gcd_lcf
      view_label: "Customer"
      sql_on: ${gcd_mcg.customersubregion}=${gcd_lcf.customersubregion}
      relationship: many_to_one
      
    - join: gcd_lct
      view_label: "Customer"
      sql_on: ${gcd_mcd.customerstatus}=${gcd_lct.customerstatus}
      relationship: many_to_one
      
    - join: gcd_lcd
      view_label: "Customer"
      sql_on: ${gcd_mcd.addresstype}=${gcd_lcd.addresstype}
      relationship: many_to_one
    
    - join: gcd_mcm
      view_label: "Customer"
      sql_on: ${gcd_mcd.urn}=${gcd_mcm.urn}
      relationship: many_to_one
    
    - join: gcd_mcy
      view_label: "Customer"
      sql_on: ${gcd_mcm.sourcesystem}=${gcd_mcy.sourcesystem}
      relationship: many_to_one
      
    - join: gcd_customer_info
      view_label: "Registration Information"
      sql_on: ${gcd_mcm.customerkey}=${gcd_customer_info.drupal_id}
      relationship: many_to_one
      
    - join: gcd_mor
      view_label: "Orders"
      sql_on: ${gcd_mcd.urn}=${gcd_mor.urn}
      relationship: one_to_many
    
  
  
#- explore:  gcd_customer_info
 # view_label: "Customer"
 # label:  "Drupal Registrations"
 # joins:
 #   - join: gcd_customer_info
  #    view_label: "Customer"
  #    sql_on: ${gcd_mcm.customerkey}=${gcd_customer_info.uid}
  #    relationship: many_to_one 
      
      
- explore:  gcd_mor
  persist_for: 8 hours
  view_label: "Orders"
  label:  "Orders"
  joins:
    - join: gcd_mcd
      view_label: "Customer"
      sql_on: ${gcd_mcd.urn}=${gcd_mor.urn}
      relationship: many_to_one
      
    - join: gcd_lop
      view_label: "Orders"
      sql_on: ${gcd_mor.paymentmethod}=${gcd_lop.paymentmethod}
      relationship: many_to_one
    
    - join: gcd_loc
      view_label: "Orders"
      sql_on: ${gcd_mor.creditcardtype}=${gcd_loc.creditcardtype}
      relationship: many_to_one 
      
    - join: gcd_lot
      view_label: "Orders"
      sql_on: ${gcd_mor.ordertype}=${gcd_lot.ordertype}
      relationship: many_to_one 
    
    - join: gcd_lom
      view_label: "Orders"
      sql_on: ${gcd_mor.currencyid}=${gcd_lom.currencyid}
      relationship: many_to_one 
    
    - join: gcd_los
      view_label: "Orders"
      sql_on: ${gcd_mor.orderstatus}=${gcd_los.orderstatus}
      relationship: many_to_one   
    
    
   # - join: gcd_lol
    #  view_label: "Orders"
   #   sql_on: ${gcd_mor.orderplatform}=${gcd_lol.orderplatform}
   #   relationship: many_to_one   
      
    - join: gcd_mbd
      view_label: "Orders"
      sql_on: ${gcd_mor.businessunitid}=${gcd_mbd.businessunitid}
      relationship: many_to_one   
    
    - join: gcd_mpd
      view_label: "Orders"
      sql_on: ${gcd_mor.productcode}=${gcd_mpd.productcode}
      relationship: many_to_one 
    
    - join: gcd_mpl
      view_label: "Orders"
      sql_on: ${gcd_mpd.productlineid}=${gcd_mpl.productlineid}
      relationship: many_to_one 
      
    - join: gcd_lpt
      view_label: "Orders"
      sql_on: ${gcd_mor.producttype}=${gcd_lpt.producttype}
      relationship: many_to_one 
      
    - join: gcd_lor
      view_label: "Orders"
      sql_on: ${gcd_mor.revenuetype}=${gcd_lor.revenuetype}
      relationship: many_to_one 
      
    


- explore: hit_data_combined
  persist_for: 8 hours
  view_label: "Clickstream Data"
  label:  "Clickstream Data"
  always_filter:
    clickstream_date: 2015/04/01 for 7 days
  joins:
    - join: gcd_mcm
      view_label: "Customer"
      sql_on: ${hit_data_combined.drupal_id}=${gcd_mcm.customerkey} and ${gcd_mcm.sourcesystem = 500}
      relationship: many_to_one
      
    - join: gcd_mor
      view_label: "Order"
      sql_on: ${hit_data_combined.urn}=${gcd_mor.urn}
      relationship: many_to_many

    - join: gcd_mcd
      view_label: "Customer"
      sql_on: ${hit_data_combined.urn}=${gcd_mcd.urn}
      relationship: many_to_one
    
    - join: gcd_mcy
      view_label: "Customer"
      sql_on: ${gcd_mcm.sourcesystem}=${gcd_mcy.sourcesystem}
      relationship: many_to_one
      
    - join: gcd_lcg
      view_label: "Customer"
      sql_on: ${gcd_mcd.gender}=${gcd_lcg.gender}
      relationship: many_to_one
      
    - join: gcd_msc
      view_label: "Customer"
      sql_on: ${gcd_mcd.countrycode}=${gcd_msc.countrycode}
      relationship: many_to_one

    - join: gcd_mcg
      view_label: "Customer"
      sql_on: ${gcd_mcd.countrycode}=${gcd_msc.countrycode}
      relationship: many_to_one
      
    - join: gcd_lcf
      view_label: "Customer"
      sql_on: ${gcd_mcg.customersubregion}=${gcd_lcf.customersubregion}
      relationship: many_to_one
      
    - join: gcd_lct
      view_label: "Customer"
      sql_on: ${gcd_mcd.customerstatus}=${gcd_lct.customerstatus}
      relationship: many_to_one
      
    - join: gcd_lcd
      view_label: "Customer"
      sql_on: ${gcd_mcd.addresstype}=${gcd_lcd.addresstype}
      relationship: many_to_one

    - join: l_browser
      view_label: "Hit Data"
      sql_on: ${hit_data_combined.browser}=${l_browser.id}
      relationship: many_to_one
      
    - join: l_browser_type
      view_label: "Hit Data"
      sql_on: ${hit_data_combined.browser}=${l_browser_type.id}
      relationship: many_to_one
      
    - join: l_country
      view_label: "Hit Data"
      sql_on: ${hit_data_combined.country}=${l_country.id}
      relationship: many_to_one
      
    - join: l_languages
      view_label: "Hit Data"
      sql_on: ${hit_data_combined.language}=${l_languages.id}
      relationship: many_to_one
      
    - join: l_operating_systems
      view_label: "Hit Data"
      sql_on: ${hit_data_combined.os}=${l_operating_systems.id}
      relationship: many_to_one
      
    - join: l_referrer_type
      view_label: "Hit Data"
      sql_on: ${hit_data_combined.ref_type}=${l_referrer_type.id}
      relationship: many_to_one
      
    - join: l_search_engines
      view_label: "Hit Data"
      sql_on: ${hit_data_combined.search_engine}=${l_search_engines.id}
      relationship: many_to_one
      
#     - join: reader_per_copy_old
#       sql_on: ${hit_data_combined.hit_week_id}=${reader_per_copy_old.hit_week} and ${hit_data_combined.source}='Economist Online'
#       relationship: many_to_one
      
    - join: reader_per_copy
      sql_on: ${hit_data_combined.hit_week_id}=${reader_per_copy.hit_week} and ${hit_data_combined.source}='Economist Online'
      relationship: many_to_one
      
    - join: customer_facts
      sql_on: ${hit_data_combined.visitor_id}=${customer_facts.visitor_id}
      relationship: many_to_one
      
    - join: session_facts
      view_label: "Visit Session Details"
      sql_on: ${hit_data_combined.visit_id}=${session_facts.visit_id}
      relationship: many_to_one
      
    - join: registration_subscription
      view_label: "Visit Session Details"
      sql_on: ${hit_data_combined.visitor_id}=${registration_subscription.visitor_id}
      relationship: many_to_one
      
    - join: visitor_counts
      view_label: "Clickstream Data"
      sql_on: ${hit_data_combined.visitor_id}=${visitor_counts.visitor_id}
      relationship: many_to_one
      
    - join: customer_source_usage
      view_label: "Clickstream Data"
      sql_on: ${hit_data_combined.drupal_id}=${customer_source_usage.drupal_id}
      relationship: many_to_one
      
    - join: customer_session_path
      view_label: "Clickstream Data"
      sql_on: ${hit_data_combined.visit_id}=${customer_session_path.visit_id}
      relationship: many_to_one

    - join: sailthru
      sql_on: ${hit_data_combined.drupal_id}=${sailthru.uid}
      relationship: many_to_one
      
- explore: customer_overlap
  persist_for: 8 hours
  always_filter:
    timeframe: 2015/04/01 for 7 days
    date_segments: Total
    overlap_by: 'Drupal ID'
    
- explore: tune_conversions
  label: "Tune"
  view_label: "Tune Conversions"

- explore: sailthru
  label: "Sailthru"
  view_label: "Sailthru"

    
  

