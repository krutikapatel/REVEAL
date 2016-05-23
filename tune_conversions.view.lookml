- view: tune_conversions
  sql_table_name: public.tune_conversions
  fields:

  - dimension: ad_id
    type: string
    sql: ${TABLE}.ad_id

  - dimension: advertiser_id
    type: number
    sql: ${TABLE}.advertiser_id

  - dimension: advertiser_ref_id
    type: string
    sql: ${TABLE}.advertiser_ref_id

  - dimension: advertiser_sub_ad
    type: string
    sql: ${TABLE}.advertiser_sub_ad

  - dimension: advertiser_sub_adgroup
    type: string
    sql: ${TABLE}.advertiser_sub_adgroup

  - dimension: advertiser_sub_keyword
    type: string
    sql: ${TABLE}.advertiser_sub_keyword

  - dimension: advertiser_sub_placement
    type: string
    sql: ${TABLE}.advertiser_sub_placement

  - dimension: advertiser_sub_site
    type: string
    sql: ${TABLE}.advertiser_sub_site

  - dimension_group: attributable_created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.attributable_created

  - dimension: attributable_id
    type: string
    sql: ${TABLE}.attributable_id

  - dimension: attributable_id_date
    type: number
    value_format_name: id
    sql: ${TABLE}.attributable_id_date

  - dimension: attributable_id_unique1
    type: number
    value_format_name: id
    sql: ${TABLE}.attributable_id_unique1

  - dimension: attributable_id_unique2
    type: number
    value_format_name: id
    sql: ${TABLE}.attributable_id_unique2

  - dimension: attributable_interval_day
    type: number
    sql: ${TABLE}.attributable_interval_day

  - dimension: attributable_interval_month
    type: number
    sql: ${TABLE}.attributable_interval_month

  - dimension: attributable_interval_week
    type: number
    sql: ${TABLE}.attributable_interval_week

  - dimension: attributable_type
    type: string
    sql: ${TABLE}.attributable_type

  - dimension: attribute_sub1
    type: string
    sql: ${TABLE}.attribute_sub1

  - dimension: attribute_sub2
    type: string
    sql: ${TABLE}.attribute_sub2

  - dimension: attribute_sub3
    type: string
    sql: ${TABLE}.attribute_sub3

  - dimension: attribute_sub4
    type: string
    sql: ${TABLE}.attribute_sub4

  - dimension: attribute_sub5
    type: string
    sql: ${TABLE}.attribute_sub5

  - dimension: bundle_site_id
    type: number
    sql: ${TABLE}.bundle_site_id

  - dimension: campaign_id
    type: number
    sql: ${TABLE}.campaign_id

  - dimension: campaign_payout_id
    type: number
    sql: ${TABLE}.campaign_payout_id

  - dimension: campaign_url_id
    type: number
    sql: ${TABLE}.campaign_url_id

  - dimension: city_code
    type: number
    sql: ${TABLE}.city_code

  - dimension: content_id
    type: string
    sql: ${TABLE}.content_id

  - dimension: content_type
    type: string
    sql: ${TABLE}.content_type

  - dimension: cost_model
    type: string
    sql: ${TABLE}.cost_model

  - dimension: costs
    type: number
    sql: ${TABLE}.costs

  - dimension: country_code
    type: string
    sql: ${TABLE}.country_code

  - dimension: currency_code
    type: string
    sql: ${TABLE}.currency_code

  - dimension_group: date1
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date1

  - dimension_group: date2
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date2

  - dimension: debug_mode
    type: number
    sql: ${TABLE}.debug_mode

  - dimension: device_brand
    type: string
    sql: ${TABLE}.device_brand

  - dimension: device_carrier
    type: string
    sql: ${TABLE}.device_carrier

  - dimension: device_id
    type: string
    sql: ${TABLE}.device_id

  - dimension: device_model
    type: string
    sql: ${TABLE}.device_model

  - dimension: device_type
    type: string
    sql: ${TABLE}.device_type

  - dimension: event_type
    type: string
    sql: ${TABLE}.event_type

  - dimension: events
    type: number
    sql: ${TABLE}.events

  - dimension: existing_user
    type: number
    sql: ${TABLE}.existing_user

  - dimension: fb_attribution
    type: number
    sql: ${TABLE}.fb_attribution

  - dimension: fb_user_id
    type: string
    sql: ${TABLE}.fb_user_id

  - dimension: install_ad_network_id
    type: number
    sql: ${TABLE}.install_ad_network_id

  - dimension: install_advertiser_sub_campaign
    type: string
    sql: ${TABLE}.install_advertiser_sub_campaign

  - dimension: install_advertiser_sub_publisher
    type: string
    sql: ${TABLE}.install_advertiser_sub_publisher

  - dimension: install_agency_id
    type: number
    sql: ${TABLE}.install_agency_id

  - dimension_group: install_created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.install_created

  - dimension: install_group_id
    type: number
    sql: ${TABLE}.install_group_id

  - dimension: install_id
    type: string
    sql: ${TABLE}.install_id

  - dimension: install_id_date
    type: number
    value_format_name: id
    sql: ${TABLE}.install_id_date

  - dimension: install_id_unique1
    type: number
    value_format_name: id
    sql: ${TABLE}.install_id_unique1

  - dimension: install_id_unique2
    type: number
    value_format_name: id
    sql: ${TABLE}.install_id_unique2

  - dimension: install_interval_day
    type: number
    sql: ${TABLE}.install_interval_day

  - dimension: install_interval_month
    type: number
    sql: ${TABLE}.install_interval_month

  - dimension: install_interval_week
    type: number
    sql: ${TABLE}.install_interval_week

  - dimension: install_publisher_id
    type: number
    sql: ${TABLE}.install_publisher_id

  - dimension: install_publisher_sub_campaign
    type: string
    sql: ${TABLE}.install_publisher_sub_campaign

  - dimension: install_publisher_sub_publisher
    type: string
    sql: ${TABLE}.install_publisher_sub_publisher

  - dimension: installs
    type: number
    sql: ${TABLE}.installs

  - dimension: is_coppa
    type: number
    sql: ${TABLE}.is_coppa

  - dimension: is_reengagement
    type: number
    sql: ${TABLE}.is_reengagement

  - dimension: level
    type: number
    sql: ${TABLE}.level

  - dimension: limited_ad_tracking
    type: number
    sql: ${TABLE}.limited_ad_tracking

  - dimension_group: log_created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.log_created

  - dimension: log_id
    type: string
    sql: ${TABLE}.log_id

  - dimension: log_id_date
    type: number
    value_format_name: id
    sql: ${TABLE}.log_id_date

  - dimension: log_id_unique1
    type: number
    value_format_name: id
    sql: ${TABLE}.log_id_unique1

  - dimension: log_id_unique2
    type: number
    value_format_name: id
    sql: ${TABLE}.log_id_unique2

  - dimension: log_status
    type: string
    sql: ${TABLE}.log_status

  - dimension: log_type
    type: string
    sql: ${TABLE}.log_type

  - dimension: match_type
    type: string
    sql: ${TABLE}.match_type

  - dimension: metro_code
    type: number
    sql: ${TABLE}.metro_code

  - dimension: olaplog_file
    type: string
    sql: ${TABLE}.olaplog_file

  - dimension: opens
    type: yesno
    sql: ${TABLE}.opens

  - dimension: os_version
    type: string
    sql: ${TABLE}.os_version

  - dimension: package_name
    type: string
    sql: ${TABLE}.package_name

  - dimension: platform
    type: string
    sql: ${TABLE}.platform

  - dimension: postal_code
    type: string
    sql: ${TABLE}.postal_code

  - dimension: publisher_sub_ad
    type: string
    sql: ${TABLE}.publisher_sub_ad

  - dimension: publisher_sub_adgroup
    type: string
    sql: ${TABLE}.publisher_sub_adgroup

  - dimension: publisher_sub_keyword
    type: string
    sql: ${TABLE}.publisher_sub_keyword

  - dimension: publisher_sub_placement
    type: string
    sql: ${TABLE}.publisher_sub_placement

  - dimension: publisher_sub_site
    type: string
    sql: ${TABLE}.publisher_sub_site

  - dimension: purchase_validation_status
    type: number
    sql: ${TABLE}.purchase_validation_status

  - dimension: quantity
    type: number
    sql: ${TABLE}.quantity

  - dimension: rating
    type: number
    sql: ${TABLE}.rating

  - dimension: reengagement_ad_network_id
    type: number
    sql: ${TABLE}.reengagement_ad_network_id

  - dimension: reengagement_advertiser_sub_campaign
    type: string
    sql: ${TABLE}.reengagement_advertiser_sub_campaign

  - dimension: reengagement_advertiser_sub_publisher
    type: string
    sql: ${TABLE}.reengagement_advertiser_sub_publisher

  - dimension: reengagement_agency_id
    type: number
    sql: ${TABLE}.reengagement_agency_id

  - dimension_group: reengagement_attributable_created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.reengagement_attributable_created

  - dimension: reengagement_attributable_id
    type: string
    sql: ${TABLE}.reengagement_attributable_id

  - dimension: reengagement_attributable_id_date
    type: number
    value_format_name: id
    sql: ${TABLE}.reengagement_attributable_id_date

  - dimension: reengagement_attributable_id_unique1
    type: number
    value_format_name: id
    sql: ${TABLE}.reengagement_attributable_id_unique1

  - dimension: reengagement_attributable_id_unique2
    type: number
    value_format_name: id
    sql: ${TABLE}.reengagement_attributable_id_unique2

  - dimension: reengagement_attributable_interval_day
    type: number
    sql: ${TABLE}.reengagement_attributable_interval_day

  - dimension: reengagement_attributable_interval_month
    type: number
    sql: ${TABLE}.reengagement_attributable_interval_month

  - dimension: reengagement_attributable_interval_week
    type: number
    sql: ${TABLE}.reengagement_attributable_interval_week

  - dimension: reengagement_attributable_type
    type: string
    sql: ${TABLE}.reengagement_attributable_type

  - dimension_group: reengagement_created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.reengagement_created

  - dimension: reengagement_id
    type: string
    sql: ${TABLE}.reengagement_id

  - dimension: reengagement_id_date
    type: number
    value_format_name: id
    sql: ${TABLE}.reengagement_id_date

  - dimension: reengagement_id_unique1
    type: number
    value_format_name: id
    sql: ${TABLE}.reengagement_id_unique1

  - dimension: reengagement_id_unique2
    type: number
    value_format_name: id
    sql: ${TABLE}.reengagement_id_unique2

  - dimension: reengagement_interval_day
    type: number
    sql: ${TABLE}.reengagement_interval_day

  - dimension: reengagement_interval_month
    type: number
    sql: ${TABLE}.reengagement_interval_month

  - dimension: reengagement_interval_week
    type: number
    sql: ${TABLE}.reengagement_interval_week

  - dimension: reengagement_publisher_id
    type: number
    sql: ${TABLE}.reengagement_publisher_id

  - dimension: reengagement_publisher_sub_campaign
    type: string
    sql: ${TABLE}.reengagement_publisher_sub_campaign

  - dimension: reengagement_publisher_sub_publisher
    type: string
    sql: ${TABLE}.reengagement_publisher_sub_publisher

  - dimension: reengagement_type
    type: string
    sql: ${TABLE}.reengagement_type

  - dimension: region_code
    type: string
    sql: ${TABLE}.region_code

  - dimension: revenues
    type: number
    sql: ${TABLE}.revenues

  - dimension: revenues_usd
    type: number
    sql: ${TABLE}.revenues_usd

  - dimension: site_event_id
    type: number
    sql: ${TABLE}.site_event_id

  - dimension: site_event_ref
    type: string
    sql: ${TABLE}.site_event_ref

  - dimension: site_id
    type: number
    sql: ${TABLE}.site_id

  - dimension: source_file
    type: string
    sql: ${TABLE}.source_file

  - dimension: status_code
    type: number
    sql: ${TABLE}.status_code

  - dimension: test_profile_id
    type: number
    sql: ${TABLE}.test_profile_id

  - dimension: twitter_attribution
    type: number
    sql: ${TABLE}.twitter_attribution

  - dimension: twitter_user_id
    type: string
    sql: ${TABLE}.twitter_user_id

  - dimension: unverified_revenues
    type: number
    sql: ${TABLE}.unverified_revenues

  - dimension: unverified_revenues_usd
    type: number
    sql: ${TABLE}.unverified_revenues_usd

  - dimension: updates
    type: number
    sql: ${TABLE}.updates

  - dimension: user_id
    type: string
    sql: ${TABLE}.user_id

  - dimension: source
    type: string
    sql: |
      CASE WHEN ${package_name}='com.economist.darwin' then 'Espresso'
      WHEN ${package_name}<>'com.economist.hummingbird' then 'Digital Edition'
      ELSE 'Unknown'
      END
    

  - measure: install_count
    type: count
    
  - measure: open_count
    type: sum
    sql: ${opens}
    
  - measure: espresso_installs
    type: count
    filters:
      package_name: 'com.economist.darwin'
      
  - measure: digital_editions_installs
    type: count
    filters:
      package_name:  -'com.economist.darwin',-'com.economist.hummingbird'