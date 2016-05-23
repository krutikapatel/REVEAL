- view: economistonline_hit_data
  sql_table_name: public.economistonline_hit_data
  fields:

  - dimension: is_customer_known
    type: yesno
    sql: ${gcd_mcd.urn} is not null
    

  - dimension: accept_language
    sql: ${TABLE}.accept_language

  - dimension: browser
    hidden: true
    type: number
    sql: ${TABLE}.browser

  - dimension: browser_height
    hidden: true
    type: number
    sql: ${TABLE}.browser_height

  - dimension: browser_width
    hidden: true
    type: number
    sql: ${TABLE}.browser_width

  - dimension: campaign
    hidden: true # Maybe field
    sql: ${TABLE}.campaign

  - dimension: carrier
    sql: ${TABLE}.carrier

  - dimension: channel
    hidden: true # Maybe field
    sql: ${TABLE}.channel

  - dimension: click_action
    hidden: true # Complex field, hidden for trial
    sql: ${TABLE}.click_action

  - dimension: click_action_type
    hidden: true # Complex field, hidden for trial
    type: number
    sql: ${TABLE}.click_action_type

  - dimension: click_tag
    hidden: true # Maybe field
    sql: ${TABLE}.click_tag

  - dimension: code_ver
    hidden: true # Maybe field
    sql: ${TABLE}.code_ver

  - dimension: color
    hidden: true
    type: number
    sql: ${TABLE}.color

  - dimension: cookies
    hidden: true # Complex field, hidden for trial
    sql: ${TABLE}.cookies

  - dimension: country
    hidden: true
    type: number
    sql: ${TABLE}.country

  - dimension: ct_connect_type
    hidden: true # Complex field, hidden for trial
    sql: ${TABLE}.ct_connect_type

  - dimension: curr_factor
    hidden: true
    type: number
    sql: ${TABLE}.curr_factor

  - dimension: curr_rate
    hidden: true
    type: number
    sql: ${TABLE}.curr_rate

  - dimension: currency
    hidden: true
    sql: ${TABLE}.currency

  - dimension: cust_visid
    hidden: true # All values are blank
    sql: ${TABLE}.cust_visid

  - dimension_group: hit
    type: time
    timeframes: [time, date, week, month, year, day_of_week, hour_of_day]
    sql: ${TABLE}.date_time
    
  - dimension: date_time
    sql: ${TABLE}.date_time
  
  - dimension: domain
    sql: ${TABLE}.domain

  - dimension: ef_id
    hidden: true # All values are blank
    sql: ${TABLE}.ef_id

  - dimension: event_list
    hidden: true # Complex field, hidden for trial
    sql: ${TABLE}.event_list

  - dimension: exclude_hit
    hidden: true 
    type: number
    sql: ${TABLE}.exclude_hit

  - dimension: first_hit_page_url
    hidden: true # Maybe field
    sql: ${TABLE}.first_hit_page_url

  - dimension: first_hit_pagename
    hidden: true # Maybe field
    sql: ${TABLE}.first_hit_pagename

  - dimension: first_hit_referrer
    sql: ${TABLE}.first_hit_referrer

  - dimension_group: first_hit_time_gmt
    hidden: true # Maybe field
    type: time
    timeframes: [time, date, week, month, year]
    sql: ${TABLE}.first_hit_time_gmt

  - dimension: geo_city
    hidden: true # Using other region filters
    sql: ${TABLE}.geo_city

  - dimension: geo_country
    hidden: true # Using other region filters
    sql: ${TABLE}.geo_country

  - dimension: geo_dma
    hidden: true # Using other region filters
    type: number
    sql: ${TABLE}.geo_dma

  - dimension: geo_region
    hidden: true # Using other region filters
    sql: ${TABLE}.geo_region

  - dimension: geo_zip
    hidden: true # Using other region filters
    sql: ${TABLE}.geo_zip

  - dimension: hier1
    hidden: true # Maybe field
    sql: ${TABLE}.hier1

  - dimension: hier2
    hidden: true # Maybe field
    sql: ${TABLE}.hier2

  - dimension: hier3
    hidden: true # Maybe field
    sql: ${TABLE}.hier3

  - dimension: hier4
    hidden: true # Maybe field
    sql: ${TABLE}.hier4

  - dimension: hier5
    hidden: true # Maybe field
    sql: ${TABLE}.hier5

  - dimension: hit_source
    type: number
    sql: ${TABLE}.hit_source

  - dimension_group: hit_time_gmt
    type: time
    datatype: epoch
    timeframes: [time, date]
    sql: ${TABLE}.hit_time_gmt
    
  - dimension: hit_time_gmt_raw
    sql: ${TABLE}.hit_time_gmt
    
  - dimension: hitid_high
    hidden: true # ID field
    type: number
    sql: ${TABLE}.hitid_high

  - dimension: hitid_low
    hidden: true # ID field
    type: number
    sql: ${TABLE}.hitid_low

  - dimension: homepage
    hidden: true # Maybe field
    sql: ${TABLE}.homepage

  - dimension: ip
    hidden: true # ID field
    sql: ${TABLE}.ip

  - dimension: ip2
    hidden: true # ID field
    sql: ${TABLE}.ip2

  - dimension: j_jscript
    hidden: true # Maybe field
    sql: ${TABLE}.j_jscript

  - dimension: java_enabled
    hidden: true # Maybe field
    sql: ${TABLE}.java_enabled

  - dimension: javascript
    hidden: true
    type: number
    sql: ${TABLE}.javascript

  - dimension: language
    hidden: true
    type: number
    sql: ${TABLE}.language

  - dimension: last_hit_time_gmt
    hidden: true # Maybe field
    type: number
    sql: ${TABLE}.last_hit_time_gmt

  - dimension: last_purchase_time_gmt
    hidden: true # Maybe field
    type: number
    sql: ${TABLE}.last_purchase_time_gmt

  - dimension: mcvisid
    hidden: true # Maybe field
    sql: ${TABLE}.mcvisid

#   - dimension: mobile_id
#     hidden: true # ID field
#     view_label: "Mobile Info"
#     type: int
#     sql: ${TABLE}.mobile_id
# 
#   - dimension: mobile_action
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobileaction
# 
#   - dimension: mobile_app_id
#     hidden: true # ID field
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobileappid
# 
#   - dimension: mobile_campaign_content
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobilecampaigncontent
# 
#   - dimension: mobile_campaign_medium
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobilecampaignmedium
# 
#   - dimension: mobile_campaign_name
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobilecampaignname
# 
#   - dimension: mobile_campaign_source
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobilecampaignsource
# 
#   - dimension: mobile_campaign_term
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobilecampaignterm
# 
#   - dimension: mobile_day_of_week
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobiledayofweek
# 
#   - dimension: mobile_days_since_first_use
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobiledayssincefirstuse
# 
#   - dimension: mobile_days_since_last_use
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobiledayssincelastuse
# 
#   - dimension: mobil_edevice
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobiledevice
# 
#   - dimension: mobile_hour_of_day
#     hidden: true # using other field for time
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobilehourofday
# 
#   - dimension: mobile_install_date
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobileinstalldate
# 
#   - dimension: mobile_launch_number
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobilelaunchnumber
# 
#   - dimension: mobile_ltv
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobileltv
# 
#   - dimension: mobile_message_id
#     hidden: true # ID field
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobilemessageid
# 
#   - dimension: mobile_message_online
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobilemessageonline
# 
#   - dimension: mobile_os_version
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobileosversion
# 
#   - dimension: mobile_resolution
#     view_label: "Mobile Info"
#     sql: ${TABLE}.mobileresolution

  - dimension: mvvar1
    hidden: true # Maybe field
    sql: ${TABLE}.mvvar1

  - dimension: mvvar2
    hidden: true # Maybe field
    sql: ${TABLE}.mvvar2

  - dimension: mvvar3
    hidden: true # Maybe field
    sql: ${TABLE}.mvvar3

  - dimension: namespace
    hidden: true # Maybe field
    sql: ${TABLE}.namespace

  - dimension: new_visit
    hidden: true # Maybe field
    type: number
    sql: ${TABLE}.new_visit

  - dimension: os
    hidden: true
    type: number
    sql: ${TABLE}.os

  - dimension: page_event
    hidden: true # Maybe field
    type: number
    sql: ${TABLE}.page_event

  - dimension: page_event_var1
    sql: ${TABLE}.page_event_var1

  - dimension: page_event_var2
    hidden: true # Not use for this during trial
    sql: ${TABLE}.page_event_var2

  - dimension: page_event_var3
    hidden: true # Not use for this during trial
    sql: ${TABLE}.page_event_var3

  - dimension: page_type
    hidden: true # only error page and no error pages used.
    sql: ${TABLE}.page_type

  - dimension: page_url
    sql: ${TABLE}.page_url

  - dimension: pagename
    sql: ${TABLE}.pagename

  - dimension: is_paid_search
    type: yesno
    sql: ${TABLE}.paid_search=1

  - dimension: persistent_cookie
    hidden: true # Maybe field
    sql: ${TABLE}.persistent_cookie

  - dimension: pointofinterest
    hidden: true # Field not defined in the document
    sql: ${TABLE}.pointofinterest

  - dimension: pointofinterestdistance
    hidden: true # Field not defined in the document
    sql: ${TABLE}.pointofinterestdistance

#   - dimension: post_campaign
#     view_label: "Post Info"
#     sql: ${TABLE}.post_campaign
# 
#   - dimension: post_channel
#     view_label: "Post Info"
#     sql: ${TABLE}.post_channel
# 
#   - dimension: post_cookies
#     view_label: "Post Info"
#     sql: ${TABLE}.post_cookies
# 
#   - dimension: post_currency
#     view_label: "Post Info"
#     sql: ${TABLE}.post_currency
# 
#   - dimension: post_event_list
#     view_label: "Post Info"
#     sql: ${TABLE}.post_event_list
# 
#   - dimension: post_hier1
#     view_label: "Post Info"
#     sql: ${TABLE}.post_hier1
# 
#   - dimension: post_hier2
#     view_label: "Post Info"
#     sql: ${TABLE}.post_hier2
# 
#   - dimension: post_hier3
#     view_label: "Post Info"
#     sql: ${TABLE}.post_hier3
# 
#   - dimension: post_hier4
#     view_label: "Post Info"
#     sql: ${TABLE}.post_hier4
# 
#   - dimension: post_hier5
#     view_label: "Post Info"
#     sql: ${TABLE}.post_hier5
# 
#   - dimension: post_keywords
#     view_label: "Post Info"
#     sql: ${TABLE}.post_keywords
# 
#   - dimension: post_mobile_action
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobileaction
# 
#   - dimension: post_mobile_app_id
#     hidden: true # ID field
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobileappid
# 
#   - dimension: post_mobile_campaign_content
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobilecampaigncontent
# 
#   - dimension: post_mobile_campaign_medium
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobilecampaignmedium
# 
#   - dimension: post_mobile_campaign_name
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobilecampaignname
# 
#   - dimension: post_mobile_campaign_source
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobilecampaignsource
# 
#   - dimension: post_mobile_campaign_term
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobilecampaignterm
# 
#   - dimension: post_mobile_day_of_week
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobiledayofweek
# 
#   - dimension: post_mobile_days_since_first_use
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobiledayssincefirstuse
# 
#   - dimension: post_mobile_days_since_last_use
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobile_days_since_last_use
# 
#   - dimension: post_mobile_device
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobiledevice
# 
#   - dimension: post_mobile_hour_of_day
#     hidden: true # using other field for time
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobilehourofday
# 
#   - dimension: post_mobile_install_date
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobileinstalldate
# 
#   - dimension: post_mobile_launch_number
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobilelaunchnumber
# 
#   - dimension: post_mobile_ltv
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobileltv
# 
#   - dimension: post_mobile_message_id
#     hidden: true # ID field
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobilemessageid
# 
#   - dimension: post_mobile_message_online
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobilemessageonline
# 
#   - dimension: post_mobile_os_version
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobileosversion
# 
#   - dimension: post_mobile_resolution
#     view_label: "Post Info"
#     sql: ${TABLE}.post_mobileresolution
# 
#   - dimension: post_page_event
#     view_label: "Post Info"
#     type: number
#     sql: ${TABLE}.post_page_event
# 
#   - dimension: post_page_event_var1
#     view_label: "Post Info"
#     sql: ${TABLE}.post_page_event_var1
# 
#   - dimension: post_page_event_var2
#     view_label: "Post Info"
#     sql: ${TABLE}.post_page_event_var2
# 
#   - dimension: post_page_event_var3
#     view_label: "Post Info"
#     sql: ${TABLE}.post_page_event_var3
# 
#   - dimension: post_page_url
#     view_label: "Post Info"
#     sql: ${TABLE}.post_page_url
# 
#   - dimension: post_pagename
#     view_label: "Post Info"
#     sql: ${TABLE}.post_pagename
# 
#   - dimension: post_pagename_no_url
#     view_label: "Post Info"
#     sql: ${TABLE}.post_pagename_no_url
# 
#   - dimension: post_partner_plugins
#     view_label: "Post Info"
#     sql: ${TABLE}.post_partner_plugins
# 
#   - dimension: post_persistent_cookie
#     view_label: "Post Info"
#     sql: ${TABLE}.post_persistent_cookie
# 
#   - dimension: post_point_of_interest
#     hidden: true # Field not defined in the document
#     view_label: "Post Info"
#     sql: ${TABLE}.post_pointofinterest
# 
#   - dimension: post_point_of_interest_distance
#     hidden: true # Field not defined in the document
#     view_label: "Post Info"
#     sql: ${TABLE}.post_pointofinterestdistance
# 
#   - dimension: post_product_list
#     hidden: true # Complex field, hidden for trial
#     view_label: "Post Info"
#     sql: ${TABLE}.post_product_list
# 
#   - dimension: post_purchase_id
#     hidden: true # ID field
#     view_label: "Post Info"
#     sql: ${TABLE}.post_purchaseid
# 
#   - dimension: post_referrer
#     view_label: "Post Info"
#     sql: ${TABLE}.post_referrer
# 
#   - dimension: post_search_engine
#     view_label: "Post Info"
#     type: number
#     sql: ${TABLE}.post_search_engine
# 
#   - dimension: post_state
#     view_label: "Post Info"
#     sql: ${TABLE}.post_state
# 
#   - dimension: post_survey
#     view_label: "Post Info"
#     sql: ${TABLE}.post_survey
# 
#   - dimension: post_t_time_info
#     view_label: "Post Info"
#     sql: ${TABLE}.post_t_time_info

  - dimension: prev_page
    hidden: true # Maybe field
    type: number
    sql: ${TABLE}.prev_page

  - dimension: product_list
    hidden: true # Complex field, hidden for trial
    sql: ${TABLE}.product_list

  - dimension: purchase_id
    hidden: true # ID field
    sql: ${TABLE}.purchaseid

  - dimension: ref_domain
    sql: ${TABLE}.ref_domain
    
  - dimension: ref_domain_grouped
    sql: |
          case when ${ref_domain} like '%google%' then 'google (multiple domains)'
          else ${ref_domain}
          end

  - dimension: ref_type
    hidden: true
    type: number
    sql: ${TABLE}.ref_type

  - dimension: referrer
    sql: ${TABLE}.referrer

  - dimension: s_resolution
    hidden: true # Maybe field
    sql: ${TABLE}.s_resolution

  - dimension: sampled_hit
    sql: ${TABLE}.sampled_hit

  - dimension: search_engine
    hidden: true
    type: number
    sql: ${TABLE}.search_engine

  - dimension: search_page_num
    type: number
    sql: ${TABLE}.search_page_num

  - dimension: secondary_hit
    type: number
    sql: ${TABLE}.secondary_hit

  - dimension: service
    sql: ${TABLE}.service

  - dimension: state
    hidden: true # Using a different field for location
    sql: ${TABLE}.state

  - dimension: stats_server
    hidden: true # Not relevant information
    sql: ${TABLE}.stats_server

  - dimension: t_time_info
    sql: ${TABLE}.t_time_info

  - dimension: user_hash
    hidden: true # Maybe field
    type: number
    sql: ${TABLE}.user_hash

  - dimension: visid_high
    hidden: true # ID field
    type: number
    sql: ${TABLE}.visid_high

  - dimension: visid_low
    hidden: true # ID field
    type: number
    sql: ${TABLE}.visid_low
    
  - dimension: visitor_id
    hidden: true # ID field
    type: string
    sql: ${visid_high} ||'_'|| ${visid_low}
    
  - dimension: visit_id
    hidden: true # ID field
    type: string
    sql: ${visid_high} ||'_'|| ${visid_low} ||'_'|| ${visit_start_time_gmt}
  
  - dimension: visit_start_time_gmt
#     view_label: "Visit Info"
    type: number
    sql: ${TABLE}.visit_start_time_gmt

  - dimension: visid_new
    hidden: true # ID field
    sql: ${TABLE}.visid_new

  - dimension: visid_timestamp
    hidden: true # ID field
    type: number
    sql: ${TABLE}.visid_timestamp

  - dimension: visid_type
    type: number
    sql: ${TABLE}.visid_type

#   - dimension: visit_keywords
#     view_label: "Visit Info"
#     sql: ${TABLE}.visit_keywords
# 
#   - dimension: visit_num
#     view_label: "Visit Info"
#     type: number
#     sql: ${TABLE}.visit_num
# 
#   - dimension: visit_referrer
#     view_label: "Visit Info"
#     sql: ${TABLE}.visit_referrer
# 
#   - dimension: visit_search_engine
#     view_label: "Visit Info"
#     sql: ${TABLE}.visit_search_engine
# 
#   - dimension: visit_start_page_url
#     view_label: "Visit Info"
#     sql: ${TABLE}.visit_start_page_url
# 
#   - dimension: visit_start_pagename
#     view_label: "Visit Info"
#     sql: ${TABLE}.visit_start_pagename
    
#START OF POST EVAR FIELDS

  - dimension: post_evar1
    hidden: true
    sql: ${TABLE}.post_evar1

  - dimension: issue_date_pe2
    sql: ${TABLE}.post_evar2

  - dimension: article_publishing_pe3
    sql: ${TABLE}.post_evar3

  - dimension: content_type_pe4
    sql: ${TABLE}.post_evar4

  - dimension: story_title_pe5
    sql: ${TABLE}.post_evar5

  - dimension: story_title_with_link
    # this dim gives you a hyperlink to the article next to it 
    sql: ${TABLE}.post_evar5
    html: |
      {{ value }}
      <a href="{{ economistonline_hit_data.max_url._value }}" target="_new">
      <img src="http://www.economist.com/favicon.ico" height=10 width=10></a>

  - measure: max_url
    # this field is used in the above story title dimension and it's only purpose is to provide one unique url to each story
    # because there are multiple urls per story. there may be a more intuitive way to do this then taking a max, 
    # but this gets the job done for now
    hidden: true
    sql: max(${url_pe32})

  - dimension: grapshot_value_pe6
    sql: ${TABLE}.post_evar6

  - dimension: post_evar7
    hidden: true
    sql: ${TABLE}.post_evar7

  - dimension: hour_of_day_post_evar_pe8
    hidden: true # using other field for time
    sql: ${TABLE}.post_evar8

  - dimension: post_evar9
    hidden: true
    sql: ${TABLE}.post_evar9

  - dimension: weekdday_weekend_day_pe10
    sql: ${TABLE}.post_evar10

  - dimension: user_login_status_pe11
    sql: ${TABLE}.post_evar11

  - dimension: pen_name_pe12
    sql: ${TABLE}.post_evar12

  - dimension: customer_type_and_product_pe13
    sql: ${TABLE}.post_evar13

  - dimension: referring_subdomain_pe14
    sql: ${TABLE}.post_evar14

  - dimension: daily_questions_pe15
    sql: ${TABLE}.post_evar15

  - dimension: facebook_widget_activity_pe16
    sql: ${TABLE}.post_evar16

  - dimension: visit_number_pe17
    hidden: true # All values are blank
    sql: ${TABLE}.post_evar17

  - dimension: commenter_name_pe18
    sql: ${TABLE}.post_evar18

  - dimension: sa_campaign_bulk_pe19
    sql: ${TABLE}.post_evar19

  - dimension: key_interactions_pe20
    sql: ${TABLE}.post_evar20

  - dimension: segments_pe21
    sql: ${TABLE}.post_evar21

  - dimension: partner_referrals_pe22
    sql: ${TABLE}.post_evar22

  - dimension: all_ref_pe23
    sql: ${TABLE}.post_evar23

  - dimension: content_category_pe24
    sql: ${TABLE}.post_evar24

  - dimension: advu_mpu_pe25
    sql: ${TABLE}.post_evar25

  - dimension: paid_content_pe26
    sql: ${TABLE}.post_evar26

  - dimension: videos_pe27
    sql: ${TABLE}.post_evar27

  - dimension: article_allowance_pe28
    sql: ${TABLE}.post_evar28

  - dimension: newsletter_signup_from_reg_pe29
    hidden: true # complex field hidden for trial
    sql: ${TABLE}.post_evar29

  - dimension: promo_code_pe30
    hidden: true # All values are blank
    sql: ${TABLE}.post_evar30

  - dimension: article_published_date_pe31
    sql: ${TABLE}.post_evar31

  - dimension: url_pe32
    sql: ${TABLE}.post_evar32

  - dimension: post_evar33
    hidden: true
    sql: ${TABLE}.post_evar33

  - dimension: mobile_optimized_pe34
    sql: ${TABLE}.post_evar34

  - dimension: multi_user_usage_pe35
    sql: ${TABLE}.post_evar35

  - dimension: facebook_twitter_activity_pe36
    sql: ${TABLE}.post_evar36

  - dimension: video_tags_pe37
    hidden: true # Complex field, hidden for trial
    sql: ${TABLE}.post_evar37

  - dimension: page_name_pe38
    sql: ${TABLE}.post_evar38

  - dimension: region_served_pe39
    hidden: true # Using different field for region
    sql: ${TABLE}.post_evar39

  - dimension: drupal_id_pe40
    hidden: true # using p40 instead
    sql: ${TABLE}.post_evar40

  - dimension: dfp_site_pe41
    hidden: true # Complex field, hidden for trial
    sql: ${TABLE}.post_evar41

  - dimension: dfp_zone_pe42
    hidden: true # Complex field, hidden for trial
    sql: ${TABLE}.post_evar42

  - dimension: post_comment_content_use_pe43
    sql: ${TABLE}.post_evar43

  - dimension: geo_country_evar_pe44
    sql: ${TABLE}.post_evar44

  - dimension: ad_viewed_or_clicked_pe45
    sql: ${TABLE}.post_evar45

  - dimension: mul_subscription_type_pe46
    sql: ${TABLE}.post_evar46

  - dimension: bulk_ip_address_pe47
    hidden: true # ID field
    sql: ${TABLE}.post_evar47

  - dimension: campaign_attribution_paid_or_d_pe48
    sql: ${TABLE}.post_evar48

  - dimension: campaign_attribution_owned_or_earned_pe49
    sql: ${TABLE}.post_evar49

  - dimension: campaign_stacking_all_pe50
    hidden: true # Complex field, hidden for trial
    sql: ${TABLE}.post_evar50

  - dimension: maximiser_campaign_pe51
    sql: ${TABLE}.post_evar51

  - dimension: internal_link_pe52
    sql: ${TABLE}.post_evar52

  - dimension: internal_link_and_external_pe53
    sql: ${TABLE}.post_evar53

  - dimension: post_evar54
    hidden: true
    sql: ${TABLE}.post_evar54

  - dimension: br_camp_cid1_linear_pe55
    hidden: true # Complex field, hidden for trial
    sql: ${TABLE}.post_evar55

  - dimension: br_camp_cid1_last_click_pe56
    hidden: true # Complex field, hidden for trial
    sql: ${TABLE}.post_evar56

  - dimension: br_camp_cid1_first_click_pe57
    hidden: true # Complex field, hidden for trial
    sql: ${TABLE}.post_evar57

  - dimension: br_camp_cid2_linear_pe58
    hidden: true # Complex field, hidden for trial
    sql: ${TABLE}.post_evar58

  - dimension: br_camp_cid2_last_click_pe59
    hidden: true # Complex field, hidden for trial
    sql: ${TABLE}.post_evar59

  - dimension: br_camp_cid2_first_click_pe60
    hidden: true # Complex field, hidden for trial
    sql: ${TABLE}.post_evar60

  - dimension: post_evar61
    hidden: true
    sql: ${TABLE}.post_evar61

  - dimension: video_player_pe62
    sql: ${TABLE}.post_evar62

  - dimension: video_site_section_pe63
    sql: ${TABLE}.post_evar63

  - dimension: video_or_audio_program_pe64
    sql: ${TABLE}.post_evar64

  - dimension: ub_offer_country_pe65
    sql: ${TABLE}.post_evar65

  - dimension: ub_offer_product_code_pe66
    sql: ${TABLE}.post_evar66

  - dimension: post_evar67
    hidden: true
    sql: ${TABLE}.post_evar67

  - dimension: form_sub_name_pe68
    hidden: true # All values are blank
    sql: ${TABLE}.post_evar68

  - dimension: form_name_and_field_pe69
    sql: ${TABLE}.post_evar69

  - dimension: ub_form_abandonment_pe70
    sql: ${TABLE}.post_evar70

  - dimension: dfp_ad_id_pe71
    hidden: true # All values are blank
    sql: ${TABLE}.post_evar71

  - dimension: sub_login_reg_activities_pe72
    hidden: true # All values blank
    sql: ${TABLE}.post_evar72

  - dimension: renewal_start_and_end_date_pe73
    hidden: true # All values blank
    sql: ${TABLE}.post_evar73

  - dimension: sub_date_and_end_pe74
    hidden: true # All values blank
    sql: ${TABLE}.post_evar74

  - dimension: post_evar75
    hidden: true
    sql: ${TABLE}.post_evar75

  - dimension: post_evar76
    hidden: true
    sql: ${TABLE}.post_evar76

  - dimension: all_newsletter_pe77
    hidden: true # All values are blank
    sql: ${TABLE}.post_evar77

  - dimension: post_evar78
    hidden: true
    sql: ${TABLE}.post_evar78

  - dimension: post_evar79
    hidden: true
    sql: ${TABLE}.post_evar79

  - dimension: subsection_pe80
    sql: ${TABLE}.post_evar80

  - dimension: int_sub_ads_pe81
    hidden: true # All values are blank
    sql: ${TABLE}.post_evar81

  - dimension: int_sub_ads_evar_pe82
    hidden: true # All values are blank
    sql: ${TABLE}.post_evar82

  - dimension: amstelnet_order_pe83
    hidden: true # All values are blank
    sql: ${TABLE}.post_evar83

  - dimension: sub_length_pe84
    hidden: true # All values blank
    sql: ${TABLE}.post_evar84

  - dimension: post_evar85
    hidden: true
    sql: ${TABLE}.post_evar85

# END OF POST EVAR FIELDS


# MEASURES

  - measure: count
    type: count
    drill_fields: detail*
    
  - measure: unique_visitors
    type: count_distinct
    sql: ${visitor_id}
    filters:
      hit_source: <>7
    
  - measure: unique_views
    type: count
    filters:
      post_page_event: 0
      
  - measure: unique_views_per_unique_users
    type: number
    sql: ${unique_views}::float/NULLIF(${unique_visitors},0)
    value_format: '#,##0.00'
    
  - measure: unique_visits
    type: count_distinct
    sql: ${visit_id}
    filters:
      hit_source: <>7
      
  - measure: unique_visits_per_unique_users
    type: number
    sql: ${unique_visits}::float/NULLIF(${unique_visitors},0)
    value_format: '#,##0.00'
  
  - measure: unique_visits_e_dotcom
    type: count_distinct
    sql: ${visid_high} || ${visid_low} || ${visit_start_time_gmt}
    
  
  - measure: videos_watched
    type: count
    filters:
      videos_watched_filter: yes

  - dimension: videos_watched_filter
    # this is only used in the above measure to filter on it
    # note there are no records that start with economist_files in the data
    hidden: true
    sql: | 
          case when ${videos_pe27} is null then 'no'
          when ${videos_pe27} = '' then 'no'
          when substring(${videos_pe27}, 1, 15) = 'economist_films' then 'no'
          else 'Yes'
          end  

  - measure: economist_film_watch
    # note there are no records that start with economist_files in the data
    type: count
    filters:
      econ_film_filter: economist_films
    
  - dimension: econ_film_filter
    # this is only used in the above measures to filter on it
    hidden: true
    sql: substring(${videos_pe27}, 1, 15)
 
  - measure: audio_listen
    type: count
    filters:
      audio_listen_filter: yes
  
  - dimension: audio_listen_filter
    # this is only used in the above measures to filter on it
    hidden: true
    sql: |
        case 
        when NVL(${video_or_audio_program_pe64},'') != '' and NVL(${videos_pe27}, '') = '' then 'Yes'
        Else 'No'
        End

    
#  - dimension: evar1
#     sql: ${TABLE}.evar1
# 
#   - dimension: evar10
#     sql: ${TABLE}.evar10
# 
#   - dimension: evar11
#     sql: ${TABLE}.evar11
# 
#   - dimension: evar12
#     sql: ${TABLE}.evar12
# 
#   - dimension: evar13
#     sql: ${TABLE}.evar13
# 
#   - dimension: evar14
#     sql: ${TABLE}.evar14
# 
#   - dimension: evar15
#     sql: ${TABLE}.evar15
# 
#   - dimension: evar16
#     sql: ${TABLE}.evar16
# 
#   - dimension: evar17
#     sql: ${TABLE}.evar17
# 
#   - dimension: evar18
#     sql: ${TABLE}.evar18
# 
#   - dimension: evar19
#     sql: ${TABLE}.evar19
# 
#   - dimension: evar2
#     sql: ${TABLE}.evar2
# 
#   - dimension: evar20
#     sql: ${TABLE}.evar20
# 
#   - dimension: evar21
#     sql: ${TABLE}.evar21
# 
#   - dimension: evar22
#     sql: ${TABLE}.evar22
# 
#   - dimension: evar23
#     sql: ${TABLE}.evar23
# 
#   - dimension: evar24
#     sql: ${TABLE}.evar24
# 
#   - dimension: evar25
#     sql: ${TABLE}.evar25
# 
#   - dimension: evar26
#     sql: ${TABLE}.evar26
# 
#   - dimension: evar27
#     sql: ${TABLE}.evar27
# 
#   - dimension: evar28
#     sql: ${TABLE}.evar28
# 
#   - dimension: evar29
#     sql: ${TABLE}.evar29
# 
#   - dimension: evar3
#     sql: ${TABLE}.evar3
# 
#   - dimension: evar30
#     sql: ${TABLE}.evar30
# 
#   - dimension: evar31
#     sql: ${TABLE}.evar31
# 
#   - dimension: evar32
#     sql: ${TABLE}.evar32
# 
#   - dimension: evar33
#     sql: ${TABLE}.evar33
# 
#   - dimension: evar34
#     sql: ${TABLE}.evar34
# 
#   - dimension: evar35
#     sql: ${TABLE}.evar35
# 
#   - dimension: evar36
#     sql: ${TABLE}.evar36
# 
#   - dimension: evar37
#     sql: ${TABLE}.evar37
# 
#   - dimension: evar38
#     sql: ${TABLE}.evar38
# 
#   - dimension: evar39
#     sql: ${TABLE}.evar39
# 
#   - dimension: evar4
#     sql: ${TABLE}.evar4
# 
#   - dimension: evar40
#     sql: ${TABLE}.evar40
# 
#   - dimension: evar41
#     sql: ${TABLE}.evar41
# 
#   - dimension: evar42
#     sql: ${TABLE}.evar42
# 
#   - dimension: evar43
#     sql: ${TABLE}.evar43
# 
#   - dimension: evar44
#     sql: ${TABLE}.evar44
# 
#   - dimension: evar45
#     sql: ${TABLE}.evar45
# 
#   - dimension: evar46
#     sql: ${TABLE}.evar46
# 
#   - dimension: evar47
#     sql: ${TABLE}.evar47
# 
#   - dimension: evar48
#     sql: ${TABLE}.evar48
# 
#   - dimension: evar49
#     sql: ${TABLE}.evar49
# 
#   - dimension: evar5
#     sql: ${TABLE}.evar5
# 
#   - dimension: evar50
#     sql: ${TABLE}.evar50
# 
#   - dimension: evar51
#     sql: ${TABLE}.evar51
# 
#   - dimension: evar52
#     sql: ${TABLE}.evar52
# 
#   - dimension: evar53
#     sql: ${TABLE}.evar53
# 
#   - dimension: evar54
#     sql: ${TABLE}.evar54
# 
#   - dimension: evar55
#     sql: ${TABLE}.evar55
# 
#   - dimension: evar56
#     sql: ${TABLE}.evar56
# 
#   - dimension: evar57
#     sql: ${TABLE}.evar57
# 
#   - dimension: evar58
#     sql: ${TABLE}.evar58
# 
#   - dimension: evar59
#     sql: ${TABLE}.evar59
# 
#   - dimension: evar6
#     sql: ${TABLE}.evar6
# 
#   - dimension: evar60
#     sql: ${TABLE}.evar60
# 
#   - dimension: evar61
#     sql: ${TABLE}.evar61
# 
#   - dimension: evar62
#     sql: ${TABLE}.evar62
# 
#   - dimension: evar63
#     sql: ${TABLE}.evar63
# 
#   - dimension: evar64
#     sql: ${TABLE}.evar64
# 
#   - dimension: evar65
#     sql: ${TABLE}.evar65
# 
#   - dimension: evar66
#     sql: ${TABLE}.evar66
# 
#   - dimension: evar67
#     sql: ${TABLE}.evar67
# 
#   - dimension: evar68
#     sql: ${TABLE}.evar68
# 
#   - dimension: evar69
#     sql: ${TABLE}.evar69
# 
#   - dimension: evar7
#     sql: ${TABLE}.evar7
# 
#   - dimension: evar70
#     sql: ${TABLE}.evar70
# 
#   - dimension: evar71
#     sql: ${TABLE}.evar71
# 
#   - dimension: evar72
#     sql: ${TABLE}.evar72
# 
#   - dimension: evar73
#     sql: ${TABLE}.evar73
# 
#   - dimension: evar74
#     sql: ${TABLE}.evar74
# 
#   - dimension: evar75
#     sql: ${TABLE}.evar75
# 
#   - dimension: evar76
#     sql: ${TABLE}.evar76
# 
#   - dimension: evar77
#     sql: ${TABLE}.evar77
# 
#   - dimension: evar78
#     sql: ${TABLE}.evar78
# 
#   - dimension: evar79
#     sql: ${TABLE}.evar79
# 
#   - dimension: evar8
#     sql: ${TABLE}.evar8
# 
#   - dimension: evar80
#     sql: ${TABLE}.evar80
# 
#   - dimension: evar81
#     sql: ${TABLE}.evar81
# 
#   - dimension: evar82
#     sql: ${TABLE}.evar82
# 
#   - dimension: evar83
#     sql: ${TABLE}.evar83
# 
#   - dimension: evar84
#     sql: ${TABLE}.evar84
# 
#   - dimension: evar85
#     sql: ${TABLE}.evar85
# 
#   - dimension: evar86
#     sql: ${TABLE}.evar86
# 
#   - dimension: evar87
#     sql: ${TABLE}.evar87
# 
#   - dimension: evar88
#     sql: ${TABLE}.evar88
# 
#   - dimension: evar89
#     sql: ${TABLE}.evar89
# 
#   - dimension: evar9
#     sql: ${TABLE}.evar9
# 
#   - dimension: evar90
#     sql: ${TABLE}.evar90
# 
#   - dimension: evar91
#     sql: ${TABLE}.evar91
# 
#   - dimension: evar92
#     sql: ${TABLE}.evar92
# 
#   - dimension: evar93
#     sql: ${TABLE}.evar93
# 
#   - dimension: evar94
#     sql: ${TABLE}.evar94
# 
#   - dimension: evar95
#     sql: ${TABLE}.evar95
# 
#   - dimension: evar96
#     sql: ${TABLE}.evar96
# 
#   - dimension: evar97
#     sql: ${TABLE}.evar97
# 
#   - dimension: evar98
#     sql: ${TABLE}.evar98
# 
#   - dimension: evar99
#     sql: ${TABLE}.evar99


# 
#   - dimension: post_evar86
#     sql: ${TABLE}.post_evar86
# 
#   - dimension: post_evar87
#     sql: ${TABLE}.post_evar87
# 
#   - dimension: post_evar88
#     sql: ${TABLE}.post_evar88
# 
#   - dimension: post_evar89
#     sql: ${TABLE}.post_evar89
# 
#   - dimension: post_evar90
#     sql: ${TABLE}.post_evar90
# 
#   - dimension: post_evar91
#     sql: ${TABLE}.post_evar91
# 
#   - dimension: post_evar92
#     sql: ${TABLE}.post_evar92
# 
#   - dimension: post_evar93
#     sql: ${TABLE}.post_evar93
# 
#   - dimension: post_evar94
#     sql: ${TABLE}.post_evar94
# 
#   - dimension: post_evar95
#     sql: ${TABLE}.post_evar95
# 
#   - dimension: post_evar96
#     sql: ${TABLE}.post_evar96
# 
#   - dimension: post_evar97
#     sql: ${TABLE}.post_evar97
# 
#   - dimension: post_evar98
#     sql: ${TABLE}.post_evar98
# 
#   - dimension: post_evar99
#     sql: ${TABLE}.post_evar99
# 
#   - dimension: post_evar100
#     sql: ${TABLE}.post_evar100

# # START OF PROP FIELDS
# 
#   - dimension: sub_section_p1
#     sql: ${TABLE}.prop1
# 
#   - dimension: issue_date_p2
#     sql: ${TABLE}.prop2
# 
#   - dimension: content_source_prop_p3
#     sql: ${TABLE}.prop3
# 
#   - dimension: content_type_prop_p4
#     sql: ${TABLE}.prop4
# 
#   - dimension: story_title_p5
#     hidden: true # Using different field for title
#     sql: ${TABLE}.prop5
# 
#   - dimension: subscriber_history_p6
#     sql: ${TABLE}.prop6
# 
#   - dimension: internal_search_term_p7
#     sql: ${TABLE}.prop7
# 
#   - dimension: hour_of_day_prop_p8
#     hidden: true # using other field for time
#     sql: ${TABLE}.prop8
# 
#   - dimension: prop9
#     hidden: true
#     sql: ${TABLE}.prop9
# 
#   - dimension: weekdday_weekend_day_p10
#     sql: ${TABLE}.prop10
# 
#   - dimension: user_login_status_p11
#     sql: ${TABLE}.prop11
# 
#   - dimension: pen_name_p12
#     sql: ${TABLE}.prop12
# 
#   - dimension: customer_type_and_product_p13
#     sql: ${TABLE}.prop13
# 
#   - dimension: referring_subdomain_p14
#     sql: ${TABLE}.prop14
# 
#   - dimension: impressions_daily_questions_p15
#     sql: ${TABLE}.prop15
# 
#   - dimension: facebook_widget_activity_p16
#     hidden: true # using pe16 instead
#     sql: ${TABLE}.prop16
# 
#   - dimension: visit_number_p17
#     sql: ${TABLE}.prop17
# 
#   - dimension: commenter_name_p18
#     sql: ${TABLE}.prop18
# 
#   - dimension: sa_campaign_bulk_p19
#     sql: ${TABLE}.prop19
# 
#   - dimension: pay_barrier_tracking_p20
#     sql: ${TABLE}.prop20
# 
#   - dimension: video_segment_p21
#     sql: ${TABLE}.prop21
# 
#   - dimension: partner_referrals_p22
#     sql: ${TABLE}.prop22
# 
#   - dimension: sub_start_date_p23
#     hidden: true # All values blank
#     sql: ${TABLE}.prop23
# 
#   - dimension: meta_name_p24
#     sql: ${TABLE}.prop24
# 
#   - dimension: prop25
#     hidden: true
#     sql: ${TABLE}.prop25
# 
#   - dimension: paid_content_p26
#     hidden: true # using pe26 instead
#     sql: ${TABLE}.prop26
# 
#   - dimension: video_p27
#     sql: ${TABLE}.prop27
# 
#   - dimension: article_allowance_p28
#     sql: ${TABLE}.prop28
# 
#   - dimension: newsletter_sign_up_form_reg_p29
#     hidden: true # complex field hidden for trial
#     sql: ${TABLE}.prop29
# 
#   - dimension: prop30
#     hidden: true
#     sql: ${TABLE}.prop30
# 
#   - dimension: article_published_date_p31
#     sql: ${TABLE}.prop31
# 
#   - dimension: url_p32
#     sql: ${TABLE}.prop32
# 
#   - dimension: prop33
#     hidden: true
#     sql: ${TABLE}.prop33
# 
#   - dimension: mobile_optimized_p34
#     hidden: true # Using pe34 instead
#     sql: ${TABLE}.prop34
# 
#   - dimension: multi_user_usage_p35
#     hidden: true # Using pe35 instead
#     sql: ${TABLE}.prop35
# 
#   - dimension: facebook_twitter_activity_p36
#     hidden: true # Using pe36 instead
#     sql: ${TABLE}.prop36
# 
#   - dimension: video_tags_p37
#     sql: ${TABLE}.prop37
# 
#   - dimension: page_name_p38
#     hidden: true # all blank values
#     sql: ${TABLE}.prop38
# 
#   - dimension: region_served_p39
#     hidden: true # Using different field for region
#     sql: ${TABLE}.prop39
# 
  - dimension: drupal_id
#     hidden: true # ID field
    sql: ${TABLE}.prop40
# 
#   - dimension: dfp_site_p41
#     hidden: true # Complex field, hidden for trial
#     sql: ${TABLE}.prop41
# 
#   - dimension: dfp_zone_p42
#     hidden: true # Complex field, hidden for trial
#     sql: ${TABLE}.prop42
# 
#   - dimension: post_comment_content_use_p43
#     sql: ${TABLE}.prop43
# 
#   - dimension: geo_country_p44
#     hidden: true                # All values are blank
#     sql: ${TABLE}.prop44
# 
#   - dimension: link_name_p45
#     sql: ${TABLE}.prop45
# 
#   - dimension: mul_subscription_type_p46
#     hidden: true # Using pe46 instead
#     sql: ${TABLE}.prop46
# 
#   - dimension: bulk_ip_address_p47
#     hidden: true # All values are blank
#     sql: ${TABLE}.prop47
# 
#   - dimension: campaign_attribution_paid_or_d_p48
#     sql: ${TABLE}.prop48
# 
#   - dimension: campaign_attribution_owned_or_earned_p49
#     sql: ${TABLE}.prop49
# 
#   - dimension: essay_section_p50
#     sql: ${TABLE}.prop50
# 
#   - dimension: maximiser_campaign_p51
#     hidden: true # Complex field hidden for trial
#     sql: ${TABLE}.prop51
# 
#   - dimension: ge_translated_articles_p52
#     sql: ${TABLE}.prop52
# 
#   - dimension: sub_expiration_p53
#     sql: ${TABLE}.prop53
# 
#   - dimension: customer_lifecyle_p54
#     sql: ${TABLE}.prop54
# 
#   - dimension: sub_length_p55
#     hidden: true # All values blank
#     sql: ${TABLE}.prop55
# 
#   - dimension: campaign_attribution_p56
#     hidden: true # All values are blank
#     sql: ${TABLE}.prop56
# 
#   - dimension: payment_type_p57
#     hidden: true # all blank values
#     sql: ${TABLE}.prop57
# 
#   - dimension: subsection_p58
#     sql: ${TABLE}.prop58
# 
#   - dimension: form_name_p59
#     hidden: true # All values are blank
#     sql: ${TABLE}.prop59
# 
#   - dimension: multimedia_elements_p60
#     hidden: true # All blank values
#     sql: ${TABLE}.prop60
# 
#   - dimension: prop61
#     hidden: true
#     sql: ${TABLE}.prop61
# 
#   - dimension: video_player_p62
#     sql: ${TABLE}.prop62
# 
#   - dimension: video_site_section_p63
#     sql: ${TABLE}.prop63
# 
#   - dimension: video_or_audio_program_p64
#     sql: ${TABLE}.prop64
# 
#   - dimension: campaign_tracking_p65
#     hidden: true # All values are blank
#     sql: ${TABLE}.prop65
# 
#   - dimension: director_or_donor_p66
#     sql: ${TABLE}.prop66
# 
#   - dimension: promo_code_p67
#     sql: ${TABLE}.prop67
# 
#   - dimension: ub_sub_type_p68
#     sql: ${TABLE}.prop68
# 
#   - dimension: form_name_and_field_p69
#     sql: ${TABLE}.prop69
# 
#   - dimension: ub_form_abandonment_p70
#     sql: ${TABLE}.prop70
# 
#   - dimension: dfp_ad_id_p71
#     hidden: true # All values are blank
#     sql: ${TABLE}.prop71
# 
#   - dimension: number_of_search_results_p72
#     hidden: true # All blank values
#     sql: ${TABLE}.prop72
# 
#   - dimension: height_evar_p73
#     sql: ${TABLE}.prop73
# 
#   - dimension: error_code_p74
#     hidden: true # All values are blank
#     sql: ${TABLE}.prop74
# 
#   - dimension: error_message_p75
#     hidden: true # All values are blank
#     sql: ${TABLE}.prop75
# 
# 
# # END OF PROP FIELDS



  - dimension: is_user_ip
    hidden: true 
    type: yesno
    sql: |
      ${ip} not in
      ('76.74.136.173',
      '208.93.112.82',
      '208.115.62.189',
      '208.88.49.116',
      '72.35.68.151',
      '122.99.116.252',
      '208.64.29.162',
      '64.151.64.36',
      '173.234.33.130',
      '212.34.152.222',
      '93.158.114.78',
      '78.153.204.52',
      '83.133.122.246',
      '208.115.48.247',
      '65.39.204.105',
      '64.34.165.189',
      '211.99.248.44',
      '64.71.140.53',
      '216.151.3.25',
      '208.115.62.204',
      '196.201.6.112',
      '78.110.165.82',
      '69.90.42.101',
      '67.58.96.43',
      '99.192.170.53',
      '118.127.32.144',
      '208.115.62.173',
      '216.155.155.184',
      '72.35.68.141',
      '216.93.249.82',
      '182.18.182.46',
      '199.36.105.26',
      '208.115.62.223',
      '66.90.103.248',
      '69.90.184.74',
      '77.79.11.40',
      '209.144.26.52',
      '213.108.251.31',
      '81.218.234.138',
      '65.18.195.129',
      '208.93.112.83',
      '208.115.62.190',
      '208.88.49.149',
      '72.35.68.152',
      '5.134.1.234',
      '72.46.128.170',
      '64.151.89.68',
      '74.126.82.60',
      '77.240.1.161',
      '91.236.116.217',
      '78.153.204.53',
      '65.39.204.98',
      '208.115.48.248',
      '65.39.204.107',
      '46.19.138.186',
      '202.85.221.97',
      '64.71.140.54',
      '216.151.3.26',
      '208.115.62.203',
      '196.201.6.110',
      '94.229.76.26',
      '69.90.42.103',
      '67.58.96.44',
      '95.141.34.234',
      '202.130.33.58',
      '204.2.244.20',
      '87.98.212.251',
      '72.35.68.142',
      '216.93.249.83',
      '182.18.182.48',
      '208.85.242.244',
      '208.115.62.224',
      '66.90.103.45',
      '69.90.184.75',
      '77.79.11.41',
      '209.144.26.53',
      '85.192.33.33',
      '219.117.207.179',
      '65.18.195.237',
      '208.93.112.80',
      '46.165.212.101',
      '208.88.49.150',
      '46.21.158.66',
      '5.134.1.235',
      '89.106.180.82',
      '69.59.152.4',
      '74.126.82.61',
      '77.240.1.162',
      '93.158.114.61',
      '78.153.204.54',
      '65.39.204.109',
      '208.115.48.249',
      '65.39.204.108',
      '46.19.138.190',
      '211.99.248.45',
      '64.71.140.55',
      '216.151.3.27',
      '208.115.62.231',
      '72.15.252.84',
      '94.229.69.74',
      '61.100.10.83',
      '67.58.96.45',
      '95.141.34.235',
      '202.130.33.59',
      '208.115.62.174',
      '87.98.212.252',
      '72.35.68.143',
      '216.93.249.84',
      '182.18.182.50',
      '208.85.242.245',
      '208.115.62.225',
      '66.90.104.22',
      '69.90.184.76',
      '202.157.154.21',
      '64.78.153.228',
      '213.108.251.33',
      '69.64.248.18',
      '65.39.204.112',
      '65.18.195.238',
      '208.93.112.81',
      '46.165.212.102',
      '208.88.49.151',
      '46.21.158.67',
      '5.134.1.236',
      '89.106.180.83',
      '208.113.96.148',
      '74.126.82.62',
      '77.240.1.163',
      '91.236.116.218',
      '204.2.244.17',
      '208.115.48.250',
      '173.234.233.90',
      '46.19.141.154',
      '202.85.221.98',
      '64.71.140.56',
      '38.109.170.50',
      '208.115.62.230',
      '72.15.252.85',
      '94.229.64.158',
      '61.100.10.85',
      '209.223.236.250',
      '95.141.34.236',
      '202.130.33.60',
      '176.56.226.140',
      '204.2.244.21',
      '87.98.212.223',
      '72.35.68.144',
      '216.93.249.85',
      '162.216.98.82',
      '208.85.242.246',
      '208.115.62.226',
      '66.90.104.24',
      '69.90.184.77',
      '202.157.154.2',
      '64.78.153.229',
      '85.192.33.35',
      '219.117.207.180',
      '65.39.204.113',
      '216.187.109.82',
      '114.23.33.58',
      '46.165.212.103',
      '209.250.31.21',
      '46.21.158.68',
      '201.235.255.70',
      '89.106.180.84',
      '64.151.91.132',
      '207.54.159.84',
      '77.240.1.164',
      '203.12.0.89',
      '208.115.62.185',
      '208.115.48.251',
      '64.120.46.202',
      '209.196.10.76',
      '211.99.248.46',
      '64.71.140.57',
      '199.36.111.226',
      '208.115.62.234',
      '72.15.252.86',
      '69.90.184.68',
      '61.100.10.87',
      '209.223.236.251',
      '216.185.196.42',
      '27.50.87.227',
      '176.56.226.142',
      '208.115.62.175',
      '118.88.21.35',
      '72.35.68.145',
      '216.93.249.86',
      '162.216.98.83',
      '208.85.242.247',
      '208.115.62.227',
      '70.32.33.122',
      '173.254.192.50',
      '202.157.154.3',
      '64.78.153.230',
      '213.108.251.35',
      '69.64.248.19',
      '65.39.204.99',
      '216.187.109.84',
      '114.23.33.59',
      '46.165.212.104',
      '209.250.31.22',
      '46.21.158.69',
      '201.235.255.71',
      '89.106.180.85',
      '200.143.186.100',
      '207.54.159.85',
      '77.240.1.165',
      '118.127.32.141',
      '204.2.244.19',
      '208.115.48.252',
      '173.208.58.234',
      '72.35.68.131',
      '202.85.221.99',
      '202.157.180.120',
      '38.109.170.51',
      '208.115.62.236',
      '74.63.64.48',
      '69.90.184.78',
      '203.142.12.49',
      '209.223.236.252',
      '216.185.196.43',
      '27.50.87.225',
      '176.56.226.144',
      '204.2.244.30',
      '118.88.21.36',
      '72.35.68.146',
      '209.190.168.36',
      '162.216.98.84',
      '208.85.242.250',
      '208.115.62.229',
      '70.32.39.42',
      '173.254.192.51',
      '64.39.226.82',
      '64.78.153.231',
      '202.157.191.67',
      '219.117.207.178',
      '65.39.204.100',
      '216.187.109.85',
      '114.23.33.60',
      '46.165.204.130',
      '209.250.31.23',
      '46.21.158.70',
      '201.235.255.72',
      '89.106.180.86',
      '200.143.186.101',
      '207.54.159.86',
      '77.240.1.166',
      '203.12.0.90',
      '208.115.62.186',
      '208.115.48.253',
      '173.234.117.146',
      '72.35.68.132',
      '83.166.171.123',
      '203.142.28.180',
      '199.36.111.227',
      '208.115.62.202',
      '74.63.64.47',
      '69.90.184.69',
      '222.73.34.60',
      '209.223.236.253',
      '216.185.196.44',
      '206.51.230.175',
      '208.93.114.66',
      '208.115.62.176',
      '118.88.21.37',
      '72.35.68.147',
      '209.190.168.37',
      '111.90.138.213',
      '208.85.242.251',
      '209.156.160.90',
      '69.147.230.98',
      '173.254.192.52',
      '64.39.226.83',
      '208.79.212.146',
      '202.157.191.84',
      '69.64.248.20',
      '65.39.204.101',
      '64.34.165.219',
      '207.200.58.106',
      '46.165.204.131',
      '209.250.31.24',
      '46.21.158.71',
      '41.215.241.2',
      '89.106.180.88',
      '200.143.186.102',
      '82.103.128.72',
      '77.240.1.167',
      '118.127.32.142',
      '204.2.244.11',
      '208.115.48.254',
      '216.155.155.180',
      '72.35.68.130',
      '83.166.171.124',
      '203.142.28.181',
      '38.109.170.52',
      '208.115.62.233',
      '74.63.64.50',
      '69.90.184.70',
      '203.142.12.23',
      '209.223.236.254',
      '65.39.172.34',
      '206.51.231.18',
      '208.93.114.67',
      '208.115.62.177',
      '118.88.21.38',
      '72.35.68.148',
      '209.190.168.38',
      '111.90.138.215',
      '208.85.242.248',
      '68.16.117.54',
      '64.120.14.114',
      '173.254.192.53',
      '64.39.226.84',
      '208.79.212.147',
      '202.157.191.85',
      '76.74.136.170',
      '65.39.204.102',
      '64.34.171.99',
      '207.200.58.107',
      '46.165.225.142',
      '209.166.131.116',
      '46.21.158.72',
      '41.215.241.90',
      '94.229.65.194',
      '69.90.42.98',
      '82.103.128.77',
      '99.192.170.50',
      '203.12.0.91',
      '208.115.62.171',
      '204.2.244.12',
      '216.155.155.181',
      '72.35.68.138',
      '83.166.171.125',
      '216.230.228.34',
      '199.36.111.228',
      '208.115.62.220',
      '74.63.64.49',
      '69.90.184.71',
      '222.73.34.61',
      '209.223.236.170',
      '65.39.172.36',
      '206.51.225.159',
      '76.74.136.171',
      '208.93.114.68',
      '208.115.53.131',
      '208.88.49.114',
      '72.35.68.149',
      '122.99.116.250',
      '111.90.151.35',
      '198.241.44.148',
      '208.115.62.214',
      '69.147.242.18',
      '212.34.134.205',
      '93.158.114.140',
      '208.79.212.148',
      '83.133.121.221',
      '208.115.62.179',
      '65.39.204.103',
      '64.34.164.186',
      '207.200.58.108',
      '64.71.140.50',
      '209.166.131.117',
      '208.115.62.200',
      '41.215.241.98',
      '94.229.65.195',
      '69.90.42.99',
      '82.103.129.140',
      '99.192.170.51',
      '118.127.32.143',
      '208.115.62.172',
      '216.155.155.182',
      '72.35.68.139',
      '83.166.171.121',
      '216.230.228.35',
      '199.36.105.2',
      '208.115.62.221',
      '74.63.64.101',
      '69.90.184.72',
      '203.142.12.24',
      '209.144.26.50',
      '65.39.172.37',
      '81.218.234.139',
      '76.74.136.172',
      '208.93.114.69',
      '208.115.62.178',
      '208.88.49.115',
      '72.35.68.150',
      '122.99.116.251',
      '208.66.76.58',
      '198.241.44.149',
      '208.115.62.215',
      '173.208.80.66',
      '212.34.152.221',
      '91.236.116.216',
      '208.79.212.149',
      '83.133.119.194',
      '208.115.62.191',
      '65.39.204.104',
      '64.34.171.27',
      '207.200.58.109',
      '64.71.140.52',
      '209.166.131.118',
      '208.115.62.235',
      '196.201.6.111',
      '94.229.65.196',
      '69.90.42.100',
      '67.58.96.42',
      '99.192.170.52',
      '203.12.0.184',
      '204.2.244.10',
      '216.155.155.183',
      '72.35.68.140',
      '83.166.171.118',
      '216.230.228.36',
      '199.36.105.3',
      '208.115.62.222',
      '66.90.103.125',
      '69.90.184.73',
      '77.79.11.10',
      '209.144.26.51',
      '85.192.33.31',
      '81.218.234.140')

  - dimension: region
    type: string
    sql: | 
        CASE
        WHEN ${geo_country} ='afg' THEN 'CE'
        WHEN ${geo_country} ='ala' THEN 'CE'
        WHEN ${geo_country} ='alb' THEN 'CE'
        WHEN ${geo_country} ='dza' THEN 'MEA'
        WHEN ${geo_country} ='asm' THEN 'USA'
        WHEN ${geo_country} ='and' THEN 'CE'
        WHEN ${geo_country} ='ago' THEN 'MEA'
        WHEN ${geo_country} ='aia' THEN 'LAAM'
        WHEN ${geo_country} ='ata' THEN '::unspecified::'
        WHEN ${geo_country} ='atg' THEN 'LAAM'
        WHEN ${geo_country} ='arg' THEN 'LAAM'
        WHEN ${geo_country} ='arm' THEN 'CE'
        WHEN ${geo_country} ='abw' THEN 'LAAM'
        WHEN ${geo_country} ='aus' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='aut' THEN 'CE'
        WHEN ${geo_country} ='aze' THEN 'CE'
        WHEN ${geo_country} ='bhs' THEN 'LAAM'
        WHEN ${geo_country} ='bhr' THEN 'MEA'
        WHEN ${geo_country} ='bgd' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='brb' THEN 'LAAM'
        WHEN ${geo_country} ='blr' THEN 'CE'
        WHEN ${geo_country} ='bel' THEN 'CE'
        WHEN ${geo_country} ='blz' THEN 'LAAM'
        WHEN ${geo_country} ='ben' THEN 'MEA'
        WHEN ${geo_country} ='bmu' THEN 'LAAM'
        WHEN ${geo_country} ='btn' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='bol' THEN 'LAAM'
        WHEN ${geo_country} ='bes' THEN 'LAAM'
        WHEN ${geo_country} ='bih' THEN 'CE'
        WHEN ${geo_country} ='bwa' THEN 'MEA'
        WHEN ${geo_country} ='bvt' THEN 'CE'
        WHEN ${geo_country} ='bra' THEN 'LAAM'
        WHEN ${geo_country} ='iot' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='brn' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='bgr' THEN 'CE'
        WHEN ${geo_country} ='bfa' THEN 'MEA'
        WHEN ${geo_country} ='bdi' THEN 'MEA'
        WHEN ${geo_country} ='khm' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='cmr' THEN 'MEA'
        WHEN ${geo_country} ='can' THEN 'CAN'
        WHEN ${geo_country} ='cpv' THEN 'CE'
        WHEN ${geo_country} ='cym' THEN 'LAAM'
        WHEN ${geo_country} ='caf' THEN 'MEA'
        WHEN ${geo_country} ='tcd' THEN 'MEA'
        WHEN ${geo_country} ='chl' THEN 'LAAM'
        WHEN ${geo_country} ='chn' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='cxr' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='cck' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='col' THEN 'LAAM'
        WHEN ${geo_country} ='com' THEN 'MEA'
        WHEN ${geo_country} ='cog' THEN 'MEA'
        WHEN ${geo_country} ='cod' THEN 'MEA'
        WHEN ${geo_country} ='cok' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='cri' THEN 'LAAM'
        WHEN ${geo_country} ='civ' THEN 'MEA'
        WHEN ${geo_country} ='hrv' THEN 'CE'
        WHEN ${geo_country} ='cub' THEN 'LAAM'
        WHEN ${geo_country} ='cuw' THEN 'LAAM'
        WHEN ${geo_country} ='cyp' THEN 'CE'
        WHEN ${geo_country} ='cze' THEN 'CE'
        WHEN ${geo_country} ='dnk' THEN 'CE'
        WHEN ${geo_country} ='dji' THEN 'MEA'
        WHEN ${geo_country} ='dma' THEN 'LAAM'
        WHEN ${geo_country} ='dom' THEN 'LAAM'
        WHEN ${geo_country} ='ecu' THEN 'LAAM'
        WHEN ${geo_country} ='egy' THEN 'MEA'
        WHEN ${geo_country} ='slv' THEN 'LAAM'
        WHEN ${geo_country} ='gnq' THEN 'MEA'
        WHEN ${geo_country} ='eri' THEN 'MEA'
        WHEN ${geo_country} ='est' THEN 'CE'
        WHEN ${geo_country} ='eth' THEN 'MEA'
        WHEN ${geo_country} ='flk' THEN 'LAAM'
        WHEN ${geo_country} ='fro' THEN 'CE'
        WHEN ${geo_country} ='fji' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='fin' THEN 'CE'
        WHEN ${geo_country} ='fra' THEN 'CE'
        WHEN ${geo_country} ='guf' THEN 'LAAM'
        WHEN ${geo_country} ='pyf' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='atf' THEN 'LAAM'
        WHEN ${geo_country} ='gab' THEN 'MEA'
        WHEN ${geo_country} ='gmb' THEN 'MEA'
        WHEN ${geo_country} ='geo' THEN 'CE'
        WHEN ${geo_country} ='deu' THEN 'CE'
        WHEN ${geo_country} ='gha' THEN 'MEA'
        WHEN ${geo_country} ='gib' THEN 'CE'
        WHEN ${geo_country} ='grc' THEN 'CE'
        WHEN ${geo_country} ='grl' THEN 'CE'
        WHEN ${geo_country} ='grd' THEN 'LAAM'
        WHEN ${geo_country} ='glp' THEN 'LAAM'
        WHEN ${geo_country} ='gum' THEN 'USA'
        WHEN ${geo_country} ='gtm' THEN 'LAAM'
        WHEN ${geo_country} ='ggy' THEN 'UK'
        WHEN ${geo_country} ='gin' THEN 'MEA'
        WHEN ${geo_country} ='gnb' THEN 'MEA'
        WHEN ${geo_country} ='guy' THEN 'LAAM'
        WHEN ${geo_country} ='hti' THEN 'LAAM'
        WHEN ${geo_country} ='hmd' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='vat' THEN 'CE'
        WHEN ${geo_country} ='hnd' THEN 'LAAM'
        WHEN ${geo_country} ='hkg' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='hun' THEN 'CE'
        WHEN ${geo_country} ='isl' THEN 'CE'
        WHEN ${geo_country} ='ind' THEN 'India'
        WHEN ${geo_country} ='idn' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='irn' THEN 'MEA'
        WHEN ${geo_country} ='irq' THEN 'MEA'
        WHEN ${geo_country} ='irl' THEN 'CE'
        WHEN ${geo_country} ='imn' THEN 'UK'
        WHEN ${geo_country} ='isr' THEN 'MEA'
        WHEN ${geo_country} ='ita' THEN 'CE'
        WHEN ${geo_country} ='jam' THEN 'LAAM'
        WHEN ${geo_country} ='jpn' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='jey' THEN 'UK'
        WHEN ${geo_country} ='jor' THEN 'MEA'
        WHEN ${geo_country} ='kaz' THEN 'CE'
        WHEN ${geo_country} ='ken' THEN 'MEA'
        WHEN ${geo_country} ='kir' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='prk' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='kor' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='kwt' THEN 'MEA'
        WHEN ${geo_country} ='kgz' THEN 'CE'
        WHEN ${geo_country} ='lao' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='lva' THEN 'CE'
        WHEN ${geo_country} ='lbn' THEN 'MEA'
        WHEN ${geo_country} ='lso' THEN 'MEA'
        WHEN ${geo_country} ='lbr' THEN 'MEA'
        WHEN ${geo_country} ='lby' THEN 'MEA'
        WHEN ${geo_country} ='lie' THEN 'CE'
        WHEN ${geo_country} ='ltu' THEN 'CE'
        WHEN ${geo_country} ='lux' THEN 'CE'
        WHEN ${geo_country} ='mac' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='mkd' THEN 'CE'
        WHEN ${geo_country} ='mdg' THEN 'MEA'
        WHEN ${geo_country} ='mwi' THEN 'MEA'
        WHEN ${geo_country} ='mys' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='mdv' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='mli' THEN 'MEA'
        WHEN ${geo_country} ='mlt' THEN 'CE'
        WHEN ${geo_country} ='mhl' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='mtq' THEN 'LAAM'
        WHEN ${geo_country} ='mrt' THEN 'MEA'
        WHEN ${geo_country} ='mus' THEN 'MEA'
        WHEN ${geo_country} ='myt' THEN 'MEA'
        WHEN ${geo_country} ='mex' THEN 'LAAM'
        WHEN ${geo_country} ='fsm' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='mda' THEN 'CE'
        WHEN ${geo_country} ='mco' THEN 'CE'
        WHEN ${geo_country} ='mng' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='mne' THEN 'CE'
        WHEN ${geo_country} ='msr' THEN 'LAAM'
        WHEN ${geo_country} ='mar' THEN 'MEA'
        WHEN ${geo_country} ='moz' THEN 'MEA'
        WHEN ${geo_country} ='mmr' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='nam' THEN 'MEA'
        WHEN ${geo_country} ='nru' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='npl' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='nld' THEN 'CE'
        WHEN ${geo_country} ='ncl' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='nzl' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='nic' THEN 'LAAM'
        WHEN ${geo_country} ='ner' THEN 'MEA'
        WHEN ${geo_country} ='nga' THEN 'MEA'
        WHEN ${geo_country} ='niu' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='nfk' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='mnp' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='nor' THEN 'CE'
        WHEN ${geo_country} ='omn' THEN 'MEA'
        WHEN ${geo_country} ='pak' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='plw' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='pse' THEN 'MEA'
        WHEN ${geo_country} ='pan' THEN 'LAAM'
        WHEN ${geo_country} ='png' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='pry' THEN 'LAAM'
        WHEN ${geo_country} ='per' THEN 'LAAM'
        WHEN ${geo_country} ='phl' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='pcn' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='pol' THEN 'CE'
        WHEN ${geo_country} ='prt' THEN 'CE'
        WHEN ${geo_country} ='pri' THEN 'USA'
        WHEN ${geo_country} ='qat' THEN 'MEA'
        WHEN ${geo_country} ='reu' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='rou' THEN 'CE'
        WHEN ${geo_country} ='rus' THEN 'CE'
        WHEN ${geo_country} ='rwa' THEN 'MEA'
        WHEN ${geo_country} ='blm' THEN 'LAAM'
        WHEN ${geo_country} ='shn' THEN 'MEA'
        WHEN ${geo_country} ='kna' THEN 'LAAM'
        WHEN ${geo_country} ='lca' THEN 'LAAM'
        WHEN ${geo_country} ='maf' THEN 'LAAM'
        WHEN ${geo_country} ='spm' THEN 'LAAM'
        WHEN ${geo_country} ='vct' THEN 'LAAM'
        WHEN ${geo_country} ='wsm' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='smr' THEN 'CE'
        WHEN ${geo_country} ='stp' THEN 'MEA'
        WHEN ${geo_country} ='sau' THEN 'MEA'
        WHEN ${geo_country} ='sen' THEN 'MEA'
        WHEN ${geo_country} ='srb' THEN 'CE'
        WHEN ${geo_country} ='syc' THEN 'MEA'
        WHEN ${geo_country} ='sle' THEN 'MEA'
        WHEN ${geo_country} ='sgp' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='sxm' THEN 'LAAM'
        WHEN ${geo_country} ='svk' THEN 'CE'
        WHEN ${geo_country} ='svn' THEN 'CE'
        WHEN ${geo_country} ='slb' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='som' THEN 'MEA'
        WHEN ${geo_country} ='zaf' THEN 'MEA'
        WHEN ${geo_country} ='sgs' THEN 'LAAM'
        WHEN ${geo_country} ='ssd' THEN 'MEA'
        WHEN ${geo_country} ='esp' THEN 'CE'
        WHEN ${geo_country} ='lka' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='sdn' THEN 'MEA'
        WHEN ${geo_country} ='sur' THEN 'LAAM'
        WHEN ${geo_country} ='sjm' THEN 'CE'
        WHEN ${geo_country} ='swz' THEN 'MEA'
        WHEN ${geo_country} ='swe' THEN 'CE'
        WHEN ${geo_country} ='che' THEN 'CE'
        WHEN ${geo_country} ='syr' THEN 'MEA'
        WHEN ${geo_country} ='twn' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='tjk' THEN 'CE'
        WHEN ${geo_country} ='tza' THEN 'MEA'
        WHEN ${geo_country} ='tha' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='tls' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='tgo' THEN 'MEA'
        WHEN ${geo_country} ='tkl' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='ton' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='tto' THEN 'LAAM'
        WHEN ${geo_country} ='tun' THEN 'MEA'
        WHEN ${geo_country} ='tur' THEN 'CE'
        WHEN ${geo_country} ='tkm' THEN 'CE'
        WHEN ${geo_country} ='tca' THEN 'LAAM'
        WHEN ${geo_country} ='tuv' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='uga' THEN 'MEA'
        WHEN ${geo_country} ='ukr' THEN 'CE'
        WHEN ${geo_country} ='are' THEN 'MEA'
        WHEN ${geo_country} ='gbr' THEN 'UK'
        WHEN ${geo_country} ='usa' THEN 'NA'
        WHEN ${geo_country} ='umi' THEN 'NA'
        WHEN ${geo_country} ='ury' THEN 'LAAM'
        WHEN ${geo_country} ='uzb' THEN 'CE'
        WHEN ${geo_country} ='vut' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='ven' THEN 'LAAM'
        WHEN ${geo_country} ='vnm' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='vgb' THEN 'LAAM'
        WHEN ${geo_country} ='vir' THEN 'NA'
        WHEN ${geo_country} ='wlf' THEN 'Asia (ex India)'
        WHEN ${geo_country} ='esh' THEN 'MEA'
        WHEN ${geo_country} ='yem' THEN 'MEA'
        WHEN ${geo_country} ='zmb' THEN 'MEA'
        ELSE 'unspecified'
        END


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - first_hit_pagename
    - mobilecampaignname
    - pagename
    - post_mobilecampaignname
    - post_pagename
    - username
    - visit_start_pagename
