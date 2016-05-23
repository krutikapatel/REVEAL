- view: espressoapp_hit_data
  sql_table_name: public.espressoapp_hit_data
  fields:

  - dimension: accept_language
    sql: ${TABLE}.accept_language

  - dimension: browser
    type: number
    sql: ${TABLE}.browser

  - dimension: browser_height
    type: number
    sql: ${TABLE}.browser_height

  - dimension: browser_width
    type: number
    sql: ${TABLE}.browser_width

  - dimension: c_color
    sql: ${TABLE}.c_color

  - dimension: campaign
    sql: ${TABLE}.campaign

  - dimension: carrier
    sql: ${TABLE}.carrier

  - dimension: channel
    sql: ${TABLE}.channel

  - dimension: click_action
    sql: ${TABLE}.click_action

  - dimension: click_action_type
    type: number
    sql: ${TABLE}.click_action_type

  - dimension: click_context
    sql: ${TABLE}.click_context

  - dimension: click_context_type
    type: number
    sql: ${TABLE}.click_context_type

  - dimension: click_sourceid
    type: int
    sql: ${TABLE}.click_sourceid

  - dimension: click_tag
    sql: ${TABLE}.click_tag

  - dimension: code_ver
    sql: ${TABLE}.code_ver

  - dimension: color
    type: number
    sql: ${TABLE}.color

  - dimension: connection_type
    type: number
    sql: ${TABLE}.connection_type

  - dimension: cookies
    sql: ${TABLE}.cookies

  - dimension: country
    type: number
    sql: ${TABLE}.country

  - dimension: ct_connect_type
    sql: ${TABLE}.ct_connect_type

  - dimension: curr_factor
    type: number
    sql: ${TABLE}.curr_factor

  - dimension: curr_rate
    type: number
    sql: ${TABLE}.curr_rate

  - dimension: currency
    sql: ${TABLE}.currency

  - dimension: cust_hit_time_gmt
    type: number
    sql: ${TABLE}.cust_hit_time_gmt

  - dimension: cust_visid
    sql: ${TABLE}.cust_visid

  - dimension: daily_visitor
    type: number
    sql: ${TABLE}.daily_visitor

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date_time

  - dimension: domain
    sql: ${TABLE}.domain

  - dimension: duplicate_events
    sql: ${TABLE}.duplicate_events

  - dimension: duplicate_purchase
    type: number
    sql: ${TABLE}.duplicate_purchase

  - dimension: duplicated_from
    sql: ${TABLE}.duplicated_from

  - dimension: ef_id
    sql: ${TABLE}.ef_id
# 
#   - dimension: evar1
#     sql: ${TABLE}.evar1
# 
#   - dimension: evar10
#     sql: ${TABLE}.evar10
# 
#   - dimension: evar100
#     sql: ${TABLE}.evar100
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

  - dimension: event_list
    sql: ${TABLE}.event_list

  - dimension: exclude_hit
    type: number
    sql: ${TABLE}.exclude_hit

  - dimension: first_hit_page_url
    sql: ${TABLE}.first_hit_page_url

  - dimension: first_hit_pagename
    sql: ${TABLE}.first_hit_pagename

  - dimension: first_hit_referrer
    sql: ${TABLE}.first_hit_referrer

  - dimension: first_hit_time_gmt
    type: number
    sql: ${TABLE}.first_hit_time_gmt

  - dimension: geo_city
    sql: ${TABLE}.geo_city

  - dimension: geo_country
    sql: ${TABLE}.geo_country

  - dimension: geo_dma
    type: number
    sql: ${TABLE}.geo_dma

  - dimension: geo_region
    sql: ${TABLE}.geo_region

  - dimension: geo_zip
    sql: ${TABLE}.geo_zip

  - dimension: hier1
    sql: ${TABLE}.hier1

  - dimension: hier2
    sql: ${TABLE}.hier2

  - dimension: hier3
    sql: ${TABLE}.hier3

  - dimension: hier4
    sql: ${TABLE}.hier4

  - dimension: hier5
    sql: ${TABLE}.hier5

  - dimension: hit_source
    type: number
    sql: ${TABLE}.hit_source

  - dimension: hit_time_gmt
    type: number
    sql: ${TABLE}.hit_time_gmt

  - dimension: hitid_high
    type: number
    sql: ${TABLE}.hitid_high

  - dimension: hitid_low
    type: number
    sql: ${TABLE}.hitid_low

  - dimension: homepage
    sql: ${TABLE}.homepage

  - dimension: hourly_visitor
    type: number
    sql: ${TABLE}.hourly_visitor

  - dimension: ip
    sql: ${TABLE}.ip

  - dimension: ip2
    sql: ${TABLE}.ip2

  - dimension: j_jscript
    sql: ${TABLE}.j_jscript

  - dimension: java_enabled
    sql: ${TABLE}.java_enabled

  - dimension: javascript
    type: number
    sql: ${TABLE}.javascript

  - dimension: language
    type: number
    sql: ${TABLE}.language

  - dimension: last_hit_time_gmt
    type: number
    sql: ${TABLE}.last_hit_time_gmt

  - dimension: last_purchase_num
    type: number
    sql: ${TABLE}.last_purchase_num

  - dimension: last_purchase_time_gmt
    type: number
    sql: ${TABLE}.last_purchase_time_gmt

  - dimension: mcvisid
    sql: ${TABLE}.mcvisid

  - dimension: mobile_id
    type: int
    sql: ${TABLE}.mobile_id

  - dimension: mobileaction
    sql: ${TABLE}.mobileaction

  - dimension: mobileappid
    sql: ${TABLE}.mobileappid

  - dimension: mobilecampaigncontent
    sql: ${TABLE}.mobilecampaigncontent

  - dimension: mobilecampaignmedium
    sql: ${TABLE}.mobilecampaignmedium

  - dimension: mobilecampaignname
    sql: ${TABLE}.mobilecampaignname

  - dimension: mobilecampaignsource
    sql: ${TABLE}.mobilecampaignsource

  - dimension: mobilecampaignterm
    sql: ${TABLE}.mobilecampaignterm

  - dimension: mobiledayofweek
    sql: ${TABLE}.mobiledayofweek

  - dimension: mobiledayssincefirstuse
    sql: ${TABLE}.mobiledayssincefirstuse

  - dimension: mobiledayssincelastuse
    sql: ${TABLE}.mobiledayssincelastuse

  - dimension: mobiledevice
    sql: ${TABLE}.mobiledevice

  - dimension: mobilehourofday
    sql: ${TABLE}.mobilehourofday

  - dimension: mobileinstalldate
    sql: ${TABLE}.mobileinstalldate

  - dimension: mobilelaunchnumber
    sql: ${TABLE}.mobilelaunchnumber

  - dimension: mobileltv
    sql: ${TABLE}.mobileltv

  - dimension: mobilemessageid
    sql: ${TABLE}.mobilemessageid

  - dimension: mobilemessageonline
    sql: ${TABLE}.mobilemessageonline

  - dimension: mobileosversion
    sql: ${TABLE}.mobileosversion

  - dimension: mobileresolution
    sql: ${TABLE}.mobileresolution

  - dimension: monthly_visitor
    type: number
    sql: ${TABLE}.monthly_visitor

  - dimension: mvvar1
    sql: ${TABLE}.mvvar1

  - dimension: mvvar2
    sql: ${TABLE}.mvvar2

  - dimension: mvvar3
    sql: ${TABLE}.mvvar3

  - dimension: namespace
    sql: ${TABLE}.namespace

  - dimension: new_visit
    type: number
    sql: ${TABLE}.new_visit

  - dimension: os
    type: number
    sql: ${TABLE}.os

  - dimension: p_plugins
    sql: ${TABLE}.p_plugins

  - dimension: page_event
    type: number
    sql: ${TABLE}.page_event

  - dimension: page_event_var1
    sql: ${TABLE}.page_event_var1

  - dimension: page_event_var2
    sql: ${TABLE}.page_event_var2

  - dimension: page_event_var3
    sql: ${TABLE}.page_event_var3

  - dimension: page_type
    sql: ${TABLE}.page_type

  - dimension: page_url
    sql: ${TABLE}.page_url

  - dimension: pagename
    sql: ${TABLE}.pagename

  - dimension: paid_search
    type: number
    sql: ${TABLE}.paid_search

  - dimension: partner_plugins
    sql: ${TABLE}.partner_plugins

  - dimension: persistent_cookie
    sql: ${TABLE}.persistent_cookie

  - dimension: plugins
    sql: ${TABLE}.plugins

  - dimension: pointofinterest
    sql: ${TABLE}.pointofinterest

  - dimension: pointofinterestdistance
    sql: ${TABLE}.pointofinterestdistance

  - dimension: post_browser_height
    type: number
    sql: ${TABLE}.post_browser_height

  - dimension: post_browser_width
    type: number
    sql: ${TABLE}.post_browser_width

  - dimension: post_campaign
    sql: ${TABLE}.post_campaign

  - dimension: post_channel
    sql: ${TABLE}.post_channel

  - dimension: post_cookies
    sql: ${TABLE}.post_cookies

  - dimension: post_currency
    sql: ${TABLE}.post_currency

  - dimension: post_cust_hit_time_gmt
    type: number
    sql: ${TABLE}.post_cust_hit_time_gmt

  - dimension: post_cust_visid
    sql: ${TABLE}.post_cust_visid

  - dimension: post_ef_id
    sql: ${TABLE}.post_ef_id

  - dimension: post_evar1
    sql: ${TABLE}.post_evar1

  - dimension: post_evar10
    sql: ${TABLE}.post_evar10

  - dimension: post_evar100
    sql: ${TABLE}.post_evar100

  - dimension: post_evar11
    sql: ${TABLE}.post_evar11

  - dimension: post_evar12
    sql: ${TABLE}.post_evar12

  - dimension: post_evar13
    sql: ${TABLE}.post_evar13

  - dimension: post_evar14
    sql: ${TABLE}.post_evar14

  - dimension: post_evar15
    sql: ${TABLE}.post_evar15

  - dimension: post_evar16
    sql: ${TABLE}.post_evar16

  - dimension: post_evar17
    sql: ${TABLE}.post_evar17

  - dimension: post_evar18
    sql: ${TABLE}.post_evar18

  - dimension: post_evar19
    sql: ${TABLE}.post_evar19

  - dimension: post_evar2
    sql: ${TABLE}.post_evar2

  - dimension: post_evar20
    sql: ${TABLE}.post_evar20

  - dimension: post_evar21
    sql: ${TABLE}.post_evar21

  - dimension: post_evar22
    sql: ${TABLE}.post_evar22

  - dimension: post_evar23
    sql: ${TABLE}.post_evar23

  - dimension: post_evar24
    sql: ${TABLE}.post_evar24

  - dimension: post_evar25
    sql: ${TABLE}.post_evar25

  - dimension: post_evar26
    sql: ${TABLE}.post_evar26

  - dimension: post_evar27
    sql: ${TABLE}.post_evar27

  - dimension: post_evar28
    sql: ${TABLE}.post_evar28

  - dimension: post_evar29
    sql: ${TABLE}.post_evar29

  - dimension: post_evar3
    sql: ${TABLE}.post_evar3

  - dimension: post_evar30
    sql: ${TABLE}.post_evar30

  - dimension: post_evar31
    sql: ${TABLE}.post_evar31

  - dimension: post_evar32
    sql: ${TABLE}.post_evar32

  - dimension: post_evar33
    sql: ${TABLE}.post_evar33

  - dimension: post_evar34
    sql: ${TABLE}.post_evar34

  - dimension: post_evar35
    sql: ${TABLE}.post_evar35

  - dimension: post_evar36
    sql: ${TABLE}.post_evar36

  - dimension: post_evar37
    sql: ${TABLE}.post_evar37

  - dimension: post_evar38
    sql: ${TABLE}.post_evar38

  - dimension: post_evar39
    sql: ${TABLE}.post_evar39

  - dimension: post_evar4
    sql: ${TABLE}.post_evar4

  - dimension: post_evar40
    sql: ${TABLE}.post_evar40

  - dimension: post_evar41
    sql: ${TABLE}.post_evar41

  - dimension: post_evar42
    sql: ${TABLE}.post_evar42

  - dimension: post_evar43
    sql: ${TABLE}.post_evar43

  - dimension: post_evar44
    sql: ${TABLE}.post_evar44

  - dimension: post_evar45
    sql: ${TABLE}.post_evar45

  - dimension: post_evar46
    sql: ${TABLE}.post_evar46

  - dimension: post_evar47
    sql: ${TABLE}.post_evar47

  - dimension: post_evar48
    sql: ${TABLE}.post_evar48

  - dimension: post_evar49
    sql: ${TABLE}.post_evar49

  - dimension: post_evar5
    sql: ${TABLE}.post_evar5

  - dimension: post_evar50
    sql: ${TABLE}.post_evar50

  - dimension: post_evar51
    sql: ${TABLE}.post_evar51

  - dimension: post_evar52
    sql: ${TABLE}.post_evar52

  - dimension: post_evar53
    sql: ${TABLE}.post_evar53

  - dimension: post_evar54
    sql: ${TABLE}.post_evar54

  - dimension: post_evar55
    sql: ${TABLE}.post_evar55

  - dimension: post_evar56
    sql: ${TABLE}.post_evar56

  - dimension: post_evar57
    sql: ${TABLE}.post_evar57

  - dimension: post_evar58
    sql: ${TABLE}.post_evar58

  - dimension: post_evar59
    sql: ${TABLE}.post_evar59

  - dimension: post_evar6
    sql: ${TABLE}.post_evar6

  - dimension: post_evar60
    sql: ${TABLE}.post_evar60

  - dimension: post_evar61
    sql: ${TABLE}.post_evar61

  - dimension: post_evar62
    sql: ${TABLE}.post_evar62

  - dimension: post_evar63
    sql: ${TABLE}.post_evar63

  - dimension: post_evar64
    sql: ${TABLE}.post_evar64

  - dimension: post_evar65
    sql: ${TABLE}.post_evar65

  - dimension: post_evar66
    sql: ${TABLE}.post_evar66

  - dimension: post_evar67
    sql: ${TABLE}.post_evar67

  - dimension: post_evar68
    sql: ${TABLE}.post_evar68

  - dimension: post_evar69
    sql: ${TABLE}.post_evar69

  - dimension: post_evar7
    sql: ${TABLE}.post_evar7

  - dimension: post_evar70
    sql: ${TABLE}.post_evar70

  - dimension: post_evar71
    sql: ${TABLE}.post_evar71

  - dimension: post_evar72
    sql: ${TABLE}.post_evar72

  - dimension: post_evar73
    sql: ${TABLE}.post_evar73

  - dimension: post_evar74
    sql: ${TABLE}.post_evar74

  - dimension: post_evar75
    sql: ${TABLE}.post_evar75

  - dimension: post_evar76
    sql: ${TABLE}.post_evar76

  - dimension: post_evar77
    sql: ${TABLE}.post_evar77

  - dimension: post_evar78
    sql: ${TABLE}.post_evar78

  - dimension: post_evar79
    sql: ${TABLE}.post_evar79

  - dimension: drupal_id
    sql: ${TABLE}.post_evar8

  - dimension: post_evar80
    sql: ${TABLE}.post_evar80

  - dimension: post_evar81
    sql: ${TABLE}.post_evar81

  - dimension: post_evar82
    sql: ${TABLE}.post_evar82

  - dimension: post_evar83
    sql: ${TABLE}.post_evar83

  - dimension: post_evar84
    sql: ${TABLE}.post_evar84

  - dimension: post_evar85
    sql: ${TABLE}.post_evar85

  - dimension: post_evar86
    sql: ${TABLE}.post_evar86

  - dimension: post_evar87
    sql: ${TABLE}.post_evar87

  - dimension: post_evar88
    sql: ${TABLE}.post_evar88

  - dimension: post_evar89
    sql: ${TABLE}.post_evar89

  - dimension: post_evar9
    sql: ${TABLE}.post_evar9

  - dimension: post_evar90
    sql: ${TABLE}.post_evar90

  - dimension: post_evar91
    sql: ${TABLE}.post_evar91

  - dimension: post_evar92
    sql: ${TABLE}.post_evar92

  - dimension: post_evar93
    sql: ${TABLE}.post_evar93

  - dimension: post_evar94
    sql: ${TABLE}.post_evar94

  - dimension: post_evar95
    sql: ${TABLE}.post_evar95

  - dimension: post_evar96
    sql: ${TABLE}.post_evar96

  - dimension: post_evar97
    sql: ${TABLE}.post_evar97

  - dimension: post_evar98
    sql: ${TABLE}.post_evar98

  - dimension: post_evar99
    sql: ${TABLE}.post_evar99

  - dimension: post_event_list
    sql: ${TABLE}.post_event_list

  - dimension: post_hier1
    sql: ${TABLE}.post_hier1

  - dimension: post_hier2
    sql: ${TABLE}.post_hier2

  - dimension: post_hier3
    sql: ${TABLE}.post_hier3

  - dimension: post_hier4
    sql: ${TABLE}.post_hier4

  - dimension: post_hier5
    sql: ${TABLE}.post_hier5

  - dimension: post_java_enabled
    sql: ${TABLE}.post_java_enabled

  - dimension: post_keywords
    sql: ${TABLE}.post_keywords

  - dimension: post_mobileaction
    sql: ${TABLE}.post_mobileaction

  - dimension: post_mobileappid
    sql: ${TABLE}.post_mobileappid

  - dimension: post_mobilecampaigncontent
    sql: ${TABLE}.post_mobilecampaigncontent

  - dimension: post_mobilecampaignmedium
    sql: ${TABLE}.post_mobilecampaignmedium

  - dimension: post_mobilecampaignname
    sql: ${TABLE}.post_mobilecampaignname

  - dimension: post_mobilecampaignsource
    sql: ${TABLE}.post_mobilecampaignsource

  - dimension: post_mobilecampaignterm
    sql: ${TABLE}.post_mobilecampaignterm

  - dimension: post_mobiledayofweek
    sql: ${TABLE}.post_mobiledayofweek

  - dimension: post_mobiledayssincefirstuse
    sql: ${TABLE}.post_mobiledayssincefirstuse

  - dimension: post_mobiledayssincelastuse
    sql: ${TABLE}.post_mobiledayssincelastuse

  - dimension: post_mobiledevice
    sql: ${TABLE}.post_mobiledevice

  - dimension: post_mobilehourofday
    sql: ${TABLE}.post_mobilehourofday

  - dimension: post_mobileinstalldate
    sql: ${TABLE}.post_mobileinstalldate

  - dimension: post_mobilelaunchnumber
    sql: ${TABLE}.post_mobilelaunchnumber

  - dimension: post_mobileltv
    sql: ${TABLE}.post_mobileltv

  - dimension: post_mobilemessageid
    sql: ${TABLE}.post_mobilemessageid

  - dimension: post_mobilemessageonline
    sql: ${TABLE}.post_mobilemessageonline

  - dimension: post_mobileosversion
    sql: ${TABLE}.post_mobileosversion

  - dimension: post_mobileresolution
    sql: ${TABLE}.post_mobileresolution

  - dimension: post_mvvar1
    sql: ${TABLE}.post_mvvar1

  - dimension: post_mvvar2
    sql: ${TABLE}.post_mvvar2

  - dimension: post_mvvar3
    sql: ${TABLE}.post_mvvar3

  - dimension: post_page_event
    type: number
    sql: ${TABLE}.post_page_event

  - dimension: post_page_event_var1
    sql: ${TABLE}.post_page_event_var1

  - dimension: post_page_event_var2
    sql: ${TABLE}.post_page_event_var2

  - dimension: post_page_event_var3
    sql: ${TABLE}.post_page_event_var3

  - dimension: post_page_type
    sql: ${TABLE}.post_page_type

  - dimension: post_page_url
    sql: ${TABLE}.post_page_url

  - dimension: post_pagename
    sql: ${TABLE}.post_pagename

  - dimension: post_pagename_no_url
    sql: ${TABLE}.post_pagename_no_url

  - dimension: post_partner_plugins
    sql: ${TABLE}.post_partner_plugins

  - dimension: post_persistent_cookie
    sql: ${TABLE}.post_persistent_cookie

  - dimension: post_pointofinterest
    sql: ${TABLE}.post_pointofinterest

  - dimension: post_pointofinterestdistance
    sql: ${TABLE}.post_pointofinterestdistance

  - dimension: post_product_list
    sql: ${TABLE}.post_product_list

  - dimension: post_prop1
    sql: ${TABLE}.post_prop1

  - dimension: post_prop10
    sql: ${TABLE}.post_prop10

  - dimension: post_prop11
    sql: ${TABLE}.post_prop11

  - dimension: post_prop12
    sql: ${TABLE}.post_prop12

  - dimension: post_prop13
    sql: ${TABLE}.post_prop13

  - dimension: post_prop14
    sql: ${TABLE}.post_prop14

  - dimension: post_prop15
    sql: ${TABLE}.post_prop15

  - dimension: post_prop16
    sql: ${TABLE}.post_prop16

  - dimension: post_prop17
    sql: ${TABLE}.post_prop17

  - dimension: post_prop18
    sql: ${TABLE}.post_prop18

  - dimension: post_prop19
    sql: ${TABLE}.post_prop19

  - dimension: post_prop2
    sql: ${TABLE}.post_prop2

  - dimension: post_prop20
    sql: ${TABLE}.post_prop20

  - dimension: post_prop21
    sql: ${TABLE}.post_prop21

  - dimension: post_prop22
    sql: ${TABLE}.post_prop22

  - dimension: post_prop23
    sql: ${TABLE}.post_prop23

  - dimension: post_prop24
    sql: ${TABLE}.post_prop24

  - dimension: post_prop25
    sql: ${TABLE}.post_prop25

  - dimension: post_prop26
    sql: ${TABLE}.post_prop26

  - dimension: post_prop27
    sql: ${TABLE}.post_prop27

  - dimension: post_prop28
    sql: ${TABLE}.post_prop28

  - dimension: post_prop29
    sql: ${TABLE}.post_prop29

  - dimension: post_prop3
    sql: ${TABLE}.post_prop3

  - dimension: post_prop30
    sql: ${TABLE}.post_prop30

  - dimension: post_prop31
    sql: ${TABLE}.post_prop31

  - dimension: post_prop32
    sql: ${TABLE}.post_prop32

  - dimension: post_prop33
    sql: ${TABLE}.post_prop33

  - dimension: post_prop34
    sql: ${TABLE}.post_prop34

  - dimension: post_prop35
    sql: ${TABLE}.post_prop35

  - dimension: post_prop36
    sql: ${TABLE}.post_prop36

  - dimension: post_prop37
    sql: ${TABLE}.post_prop37

  - dimension: post_prop38
    sql: ${TABLE}.post_prop38

  - dimension: post_prop39
    sql: ${TABLE}.post_prop39

  - dimension: post_prop4
    sql: ${TABLE}.post_prop4

  - dimension: post_prop40
    sql: ${TABLE}.post_prop40

  - dimension: post_prop41
    sql: ${TABLE}.post_prop41

  - dimension: post_prop42
    sql: ${TABLE}.post_prop42

  - dimension: post_prop43
    sql: ${TABLE}.post_prop43

  - dimension: post_prop44
    sql: ${TABLE}.post_prop44

  - dimension: post_prop45
    sql: ${TABLE}.post_prop45

  - dimension: post_prop46
    sql: ${TABLE}.post_prop46

  - dimension: post_prop47
    sql: ${TABLE}.post_prop47

  - dimension: post_prop48
    sql: ${TABLE}.post_prop48

  - dimension: post_prop49
    sql: ${TABLE}.post_prop49

  - dimension: post_prop5
    sql: ${TABLE}.post_prop5

  - dimension: post_prop50
    sql: ${TABLE}.post_prop50

  - dimension: post_prop51
    sql: ${TABLE}.post_prop51

  - dimension: post_prop52
    sql: ${TABLE}.post_prop52

  - dimension: post_prop53
    sql: ${TABLE}.post_prop53

  - dimension: post_prop54
    sql: ${TABLE}.post_prop54

  - dimension: post_prop55
    sql: ${TABLE}.post_prop55

  - dimension: post_prop56
    sql: ${TABLE}.post_prop56

  - dimension: post_prop57
    sql: ${TABLE}.post_prop57

  - dimension: post_prop58
    sql: ${TABLE}.post_prop58

  - dimension: post_prop59
    sql: ${TABLE}.post_prop59

  - dimension: post_prop6
    sql: ${TABLE}.post_prop6

  - dimension: post_prop60
    sql: ${TABLE}.post_prop60

  - dimension: post_prop61
    sql: ${TABLE}.post_prop61

  - dimension: post_prop62
    sql: ${TABLE}.post_prop62

  - dimension: post_prop63
    sql: ${TABLE}.post_prop63

  - dimension: post_prop64
    sql: ${TABLE}.post_prop64

  - dimension: post_prop65
    sql: ${TABLE}.post_prop65

  - dimension: post_prop66
    sql: ${TABLE}.post_prop66

  - dimension: post_prop67
    sql: ${TABLE}.post_prop67

  - dimension: post_prop68
    sql: ${TABLE}.post_prop68

  - dimension: post_prop69
    sql: ${TABLE}.post_prop69

  - dimension: post_prop7
    sql: ${TABLE}.post_prop7

  - dimension: post_prop70
    sql: ${TABLE}.post_prop70

  - dimension: post_prop71
    sql: ${TABLE}.post_prop71

  - dimension: post_prop72
    sql: ${TABLE}.post_prop72

  - dimension: post_prop73
    sql: ${TABLE}.post_prop73

  - dimension: post_prop74
    sql: ${TABLE}.post_prop74

  - dimension: post_prop75
    sql: ${TABLE}.post_prop75

  - dimension: post_prop8
    sql: ${TABLE}.post_prop8

  - dimension: post_prop9
    sql: ${TABLE}.post_prop9

  - dimension: post_purchaseid
    sql: ${TABLE}.post_purchaseid

  - dimension: post_referrer
    sql: ${TABLE}.post_referrer

  - dimension: post_s_kwcid
    sql: ${TABLE}.post_s_kwcid

  - dimension: post_search_engine
    type: number
    sql: ${TABLE}.post_search_engine

  - dimension: post_socialaccountandappids
    sql: ${TABLE}.post_socialaccountandappids

  - dimension: post_socialassettrackingcode
    sql: ${TABLE}.post_socialassettrackingcode

  - dimension: post_socialauthor
    sql: ${TABLE}.post_socialauthor

  - dimension: post_socialcontentprovider
    sql: ${TABLE}.post_socialcontentprovider

  - dimension: post_socialfbstories
    sql: ${TABLE}.post_socialfbstories

  - dimension: post_socialfbstorytellers
    sql: ${TABLE}.post_socialfbstorytellers

  - dimension: post_socialinteractioncount
    sql: ${TABLE}.post_socialinteractioncount

  - dimension: post_socialinteractiontype
    sql: ${TABLE}.post_socialinteractiontype

  - dimension: post_sociallanguage
    sql: ${TABLE}.post_sociallanguage

  - dimension: post_sociallatlong
    sql: ${TABLE}.post_sociallatlong

  - dimension: post_sociallikeadds
    sql: ${TABLE}.post_sociallikeadds

  - dimension: post_socialmentions
    sql: ${TABLE}.post_socialmentions

  - dimension: post_socialowneddefinitioninsighttype
    sql: ${TABLE}.post_socialowneddefinitioninsighttype

  - dimension: post_socialowneddefinitioninsightvalue
    sql: ${TABLE}.post_socialowneddefinitioninsightvalue

  - dimension: post_socialowneddefinitionmetric
    sql: ${TABLE}.post_socialowneddefinitionmetric

  - dimension: post_socialowneddefinitionpropertyvspost
    sql: ${TABLE}.post_socialowneddefinitionpropertyvspost

  - dimension: post_socialownedpostids
    sql: ${TABLE}.post_socialownedpostids

  - dimension: post_socialownedpropertyid
    sql: ${TABLE}.post_socialownedpropertyid

  - dimension: post_socialownedpropertyname
    sql: ${TABLE}.post_socialownedpropertyname

  - dimension: post_socialownedpropertypropertyvsapp
    sql: ${TABLE}.post_socialownedpropertypropertyvsapp

  - dimension: post_socialpageviews
    sql: ${TABLE}.post_socialpageviews

  - dimension: post_socialpostviews
    sql: ${TABLE}.post_socialpostviews

  - dimension: post_socialpubcomments
    sql: ${TABLE}.post_socialpubcomments

  - dimension: post_socialpubposts
    sql: ${TABLE}.post_socialpubposts

  - dimension: post_socialpubrecommends
    sql: ${TABLE}.post_socialpubrecommends

  - dimension: post_socialpubsubscribers
    sql: ${TABLE}.post_socialpubsubscribers

  - dimension: post_socialterm
    sql: ${TABLE}.post_socialterm

  - dimension: post_socialtotalsentiment
    sql: ${TABLE}.post_socialtotalsentiment

  - dimension: post_state
    sql: ${TABLE}.post_state

  - dimension: post_survey
    sql: ${TABLE}.post_survey

  - dimension: post_t_time_info
    sql: ${TABLE}.post_t_time_info

  - dimension: post_tnt
    sql: ${TABLE}.post_tnt

  - dimension: post_tnt_action
    sql: ${TABLE}.post_tnt_action

  - dimension: post_transactionid
    sql: ${TABLE}.post_transactionid

  - dimension: post_video
    sql: ${TABLE}.post_video

  - dimension: post_videoad
    sql: ${TABLE}.post_videoad

  - dimension: post_videoadinpod
    sql: ${TABLE}.post_videoadinpod

  - dimension: post_videoadplayername
    sql: ${TABLE}.post_videoadplayername

  - dimension: post_videoadpod
    sql: ${TABLE}.post_videoadpod

  - dimension: post_videochannel
    sql: ${TABLE}.post_videochannel

  - dimension: post_videocontenttype
    sql: ${TABLE}.post_videocontenttype

  - dimension: post_videopath
    sql: ${TABLE}.post_videopath

  - dimension: post_videoplayername
    sql: ${TABLE}.post_videoplayername

  - dimension: post_videosegment
    sql: ${TABLE}.post_videosegment

  - dimension: post_visid_high
    type: number
    sql: ${TABLE}.post_visid_high

  - dimension: post_visid_low
    type: number
    sql: ${TABLE}.post_visid_low
    
  - dimension: visitor_id
    hidden: true # ID field
    type: string
    sql: ${post_visid_high} ||'_'|| ${post_visid_low}

  - dimension: post_visid_type
    type: number
    sql: ${TABLE}.post_visid_type

  - dimension: post_zip
    sql: ${TABLE}.post_zip

  - dimension: prev_page
    type: number
    sql: ${TABLE}.prev_page

  - dimension: product_list
    sql: ${TABLE}.product_list

  - dimension: product_merchandising
    sql: ${TABLE}.product_merchandising
# 
#   - dimension: prop1
#     sql: ${TABLE}.prop1
# 
#   - dimension: prop10
#     sql: ${TABLE}.prop10
# 
#   - dimension: prop11
#     sql: ${TABLE}.prop11
# 
#   - dimension: prop12
#     sql: ${TABLE}.prop12
# 
#   - dimension: prop13
#     sql: ${TABLE}.prop13
# 
#   - dimension: prop14
#     sql: ${TABLE}.prop14
# 
#   - dimension: prop15
#     sql: ${TABLE}.prop15
# 
#   - dimension: prop16
#     sql: ${TABLE}.prop16
# 
#   - dimension: prop17
#     sql: ${TABLE}.prop17
# 
#   - dimension: prop18
#     sql: ${TABLE}.prop18
# 
#   - dimension: prop19
#     sql: ${TABLE}.prop19
# 
#   - dimension: prop2
#     sql: ${TABLE}.prop2
# 
#   - dimension: prop20
#     sql: ${TABLE}.prop20
# 
#   - dimension: prop21
#     sql: ${TABLE}.prop21
# 
#   - dimension: prop22
#     sql: ${TABLE}.prop22
# 
#   - dimension: prop23
#     sql: ${TABLE}.prop23
# 
#   - dimension: prop24
#     sql: ${TABLE}.prop24
# 
#   - dimension: prop25
#     sql: ${TABLE}.prop25
# 
#   - dimension: prop26
#     sql: ${TABLE}.prop26
# 
#   - dimension: prop27
#     sql: ${TABLE}.prop27
# 
#   - dimension: prop28
#     sql: ${TABLE}.prop28
# 
#   - dimension: prop29
#     sql: ${TABLE}.prop29
# 
#   - dimension: prop3
#     sql: ${TABLE}.prop3
# 
#   - dimension: prop30
#     sql: ${TABLE}.prop30
# 
#   - dimension: prop31
#     sql: ${TABLE}.prop31
# 
#   - dimension: prop32
#     sql: ${TABLE}.prop32
# 
#   - dimension: prop33
#     sql: ${TABLE}.prop33
# 
#   - dimension: prop34
#     sql: ${TABLE}.prop34
# 
#   - dimension: prop35
#     sql: ${TABLE}.prop35
# 
#   - dimension: prop36
#     sql: ${TABLE}.prop36
# 
#   - dimension: prop37
#     sql: ${TABLE}.prop37
# 
#   - dimension: prop38
#     sql: ${TABLE}.prop38
# 
#   - dimension: prop39
#     sql: ${TABLE}.prop39
# 
#   - dimension: prop4
#     sql: ${TABLE}.prop4
# 
#   - dimension: prop40
#     sql: ${TABLE}.prop40
# 
#   - dimension: prop41
#     sql: ${TABLE}.prop41
# 
#   - dimension: prop42
#     sql: ${TABLE}.prop42
# 
#   - dimension: prop43
#     sql: ${TABLE}.prop43
# 
#   - dimension: prop44
#     sql: ${TABLE}.prop44
# 
#   - dimension: prop45
#     sql: ${TABLE}.prop45
# 
#   - dimension: prop46
#     sql: ${TABLE}.prop46
# 
#   - dimension: prop47
#     sql: ${TABLE}.prop47
# 
#   - dimension: prop48
#     sql: ${TABLE}.prop48
# 
#   - dimension: prop49
#     sql: ${TABLE}.prop49
# 
#   - dimension: prop5
#     sql: ${TABLE}.prop5
# 
#   - dimension: prop50
#     sql: ${TABLE}.prop50
# 
#   - dimension: prop51
#     sql: ${TABLE}.prop51
# 
#   - dimension: prop52
#     sql: ${TABLE}.prop52
# 
#   - dimension: prop53
#     sql: ${TABLE}.prop53
# 
#   - dimension: prop54
#     sql: ${TABLE}.prop54
# 
#   - dimension: prop55
#     sql: ${TABLE}.prop55
# 
#   - dimension: prop56
#     sql: ${TABLE}.prop56
# 
#   - dimension: prop57
#     sql: ${TABLE}.prop57
# 
#   - dimension: prop58
#     sql: ${TABLE}.prop58
# 
#   - dimension: prop59
#     sql: ${TABLE}.prop59
# 
#   - dimension: prop6
#     sql: ${TABLE}.prop6
# 
#   - dimension: prop60
#     sql: ${TABLE}.prop60
# 
#   - dimension: prop61
#     sql: ${TABLE}.prop61
# 
#   - dimension: prop62
#     sql: ${TABLE}.prop62
# 
#   - dimension: prop63
#     sql: ${TABLE}.prop63
# 
#   - dimension: prop64
#     sql: ${TABLE}.prop64
# 
#   - dimension: prop65
#     sql: ${TABLE}.prop65
# 
#   - dimension: prop66
#     sql: ${TABLE}.prop66
# 
#   - dimension: prop67
#     sql: ${TABLE}.prop67
# 
#   - dimension: prop68
#     sql: ${TABLE}.prop68
# 
#   - dimension: prop69
#     sql: ${TABLE}.prop69
# 
#   - dimension: prop7
#     sql: ${TABLE}.prop7
# 
#   - dimension: prop70
#     sql: ${TABLE}.prop70
# 
#   - dimension: prop71
#     sql: ${TABLE}.prop71
# 
#   - dimension: prop72
#     sql: ${TABLE}.prop72
# 
#   - dimension: prop73
#     sql: ${TABLE}.prop73
# 
#   - dimension: prop74
#     sql: ${TABLE}.prop74
# 
#   - dimension: prop75
#     sql: ${TABLE}.prop75
# 
#   - dimension: prop8
#     sql: ${TABLE}.prop8
# 
#   - dimension: prop9
#     sql: ${TABLE}.prop9

  - dimension: purchaseid
    sql: ${TABLE}.purchaseid

  - dimension: quarterly_visitor
    type: number
    sql: ${TABLE}.quarterly_visitor

  - dimension: ref_domain
    sql: ${TABLE}.ref_domain

  - dimension: ref_type
    type: number
    sql: ${TABLE}.ref_type

  - dimension: referrer
    sql: ${TABLE}.referrer

  - dimension: resolution
    type: number
    sql: ${TABLE}.resolution

  - dimension: s_kwcid
    sql: ${TABLE}.s_kwcid

  - dimension: s_resolution
    sql: ${TABLE}.s_resolution

  - dimension: sampled_hit
    sql: ${TABLE}.sampled_hit

  - dimension: search_engine
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

  - dimension: socialaccountandappids
    sql: ${TABLE}.socialaccountandappids

  - dimension: socialassettrackingcode
    sql: ${TABLE}.socialassettrackingcode

  - dimension: socialauthor
    sql: ${TABLE}.socialauthor

  - dimension: socialcontentprovider
    sql: ${TABLE}.socialcontentprovider

  - dimension: socialfbstories
    sql: ${TABLE}.socialfbstories

  - dimension: socialfbstorytellers
    sql: ${TABLE}.socialfbstorytellers

  - dimension: socialinteractioncount
    sql: ${TABLE}.socialinteractioncount

  - dimension: socialinteractiontype
    sql: ${TABLE}.socialinteractiontype

  - dimension: sociallanguage
    sql: ${TABLE}.sociallanguage

  - dimension: sociallatlong
    sql: ${TABLE}.sociallatlong

  - dimension: sociallikeadds
    sql: ${TABLE}.sociallikeadds

  - dimension: socialmentions
    sql: ${TABLE}.socialmentions

  - dimension: socialowneddefinitioninsighttype
    sql: ${TABLE}.socialowneddefinitioninsighttype

  - dimension: socialowneddefinitioninsightvalue
    sql: ${TABLE}.socialowneddefinitioninsightvalue

  - dimension: socialowneddefinitionmetric
    sql: ${TABLE}.socialowneddefinitionmetric

  - dimension: socialowneddefinitionpropertyvspost
    sql: ${TABLE}.socialowneddefinitionpropertyvspost

  - dimension: socialownedpostids
    sql: ${TABLE}.socialownedpostids

  - dimension: socialownedpropertyid
    sql: ${TABLE}.socialownedpropertyid

  - dimension: socialownedpropertyname
    sql: ${TABLE}.socialownedpropertyname

  - dimension: socialownedpropertypropertyvsapp
    sql: ${TABLE}.socialownedpropertypropertyvsapp

  - dimension: socialpageviews
    sql: ${TABLE}.socialpageviews

  - dimension: socialpostviews
    sql: ${TABLE}.socialpostviews

  - dimension: socialpubcomments
    sql: ${TABLE}.socialpubcomments

  - dimension: socialpubposts
    sql: ${TABLE}.socialpubposts

  - dimension: socialpubrecommends
    sql: ${TABLE}.socialpubrecommends

  - dimension: socialpubsubscribers
    sql: ${TABLE}.socialpubsubscribers

  - dimension: socialterm
    sql: ${TABLE}.socialterm

  - dimension: socialtotalsentiment
    sql: ${TABLE}.socialtotalsentiment

  - dimension: sourceid
    type: int
    sql: ${TABLE}.sourceid

  - dimension: state
    sql: ${TABLE}.state

  - dimension: stats_server
    sql: ${TABLE}.stats_server

  - dimension: t_time_info
    sql: ${TABLE}.t_time_info

  - dimension: tnt
    sql: ${TABLE}.tnt

  - dimension: tnt_action
    sql: ${TABLE}.tnt_action

  - dimension: tnt_post_vista
    sql: ${TABLE}.tnt_post_vista

  - dimension: transactionid
    sql: ${TABLE}.transactionid

  - dimension: truncated_hit
    sql: ${TABLE}.truncated_hit

  - dimension: ua_color
    sql: ${TABLE}.ua_color

  - dimension: ua_os
    sql: ${TABLE}.ua_os

  - dimension: ua_pixels
    sql: ${TABLE}.ua_pixels

  - dimension: user_agent
    sql: ${TABLE}.user_agent

  - dimension: user_hash
    type: number
    sql: ${TABLE}.user_hash

  - dimension: user_server
    sql: ${TABLE}.user_server

  - dimension: userid
    type: int
    sql: ${TABLE}.userid

  - dimension: username
    sql: ${TABLE}.username

  - dimension: va_closer_detail
    sql: ${TABLE}.va_closer_detail

  - dimension: va_closer_id
    type: int
    sql: ${TABLE}.va_closer_id

  - dimension: va_finder_detail
    sql: ${TABLE}.va_finder_detail

  - dimension: va_finder_id
    type: int
    sql: ${TABLE}.va_finder_id

  - dimension: va_instance_event
    type: number
    sql: ${TABLE}.va_instance_event

  - dimension: va_new_engagement
    type: number
    sql: ${TABLE}.va_new_engagement

  - dimension: video
    sql: ${TABLE}.video

  - dimension: videoad
    sql: ${TABLE}.videoad

  - dimension: videoadinpod
    sql: ${TABLE}.videoadinpod

  - dimension: videoadplayername
    sql: ${TABLE}.videoadplayername

  - dimension: videoadpod
    sql: ${TABLE}.videoadpod

  - dimension: videochannel
    sql: ${TABLE}.videochannel

  - dimension: videocontenttype
    sql: ${TABLE}.videocontenttype

  - dimension: videopath
    sql: ${TABLE}.videopath

  - dimension: videoplayername
    sql: ${TABLE}.videoplayername

  - dimension: videosegment
    sql: ${TABLE}.videosegment

  - dimension: visid_high
    type: number
    sql: ${TABLE}.visid_high

  - dimension: visid_low
    type: number
    sql: ${TABLE}.visid_low

  - dimension: visid_new
    sql: ${TABLE}.visid_new

  - dimension: visid_timestamp
    type: number
    sql: ${TABLE}.visid_timestamp

  - dimension: visid_type
    type: number
    sql: ${TABLE}.visid_type

  - dimension: visit_keywords
    sql: ${TABLE}.visit_keywords

  - dimension: visit_num
    type: number
    sql: ${TABLE}.visit_num

  - dimension: visit_page_num
    type: number
    sql: ${TABLE}.visit_page_num

  - dimension: visit_referrer
    sql: ${TABLE}.visit_referrer

  - dimension: visit_search_engine
    sql: ${TABLE}.visit_search_engine

  - dimension: visit_start_page_url
    sql: ${TABLE}.visit_start_page_url

  - dimension: visit_start_pagename
    sql: ${TABLE}.visit_start_pagename

  - dimension: visit_start_time_gmt
    type: number
    sql: ${TABLE}.visit_start_time_gmt

  - dimension: weekly_visitor
    type: number
    sql: ${TABLE}.weekly_visitor

  - dimension: yearly_visitor
    type: number
    sql: ${TABLE}.yearly_visitor

  - dimension: zip
    sql: ${TABLE}.zip

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - first_hit_pagename
    - mobilecampaignname
    - pagename
    - post_mobilecampaignname
    - post_pagename
    - post_socialownedpropertyname
    - post_videoadplayername
    - post_videoplayername
    - socialownedpropertyname
    - username
    - videoadplayername
    - videoplayername
    - visit_start_pagename

