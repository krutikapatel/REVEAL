- view: hit_data_combined
  sql_table_name: public.hit_data_combined
#   derived_table:
#     sql: |
#       SELECT
#       dig_ed.date_time
#       , lower(dig_ed.accept_language) as accept_language
#       , 'Digital App' as source
#       , dig_ed.browser
#       , dig_ed.os
#       , dig_ed.connection_type
#       , dig_ed.post_evar44 as country
#       , CASE
#       WHEN dig_ed.post_evar44 ='afg' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='ala' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='alb' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='dza' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='asm' THEN 'USA'
#       WHEN dig_ed.post_evar44 ='and' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='ago' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='aia' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='ata' THEN '::unspecified::'
#       WHEN dig_ed.post_evar44 ='atg' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='arg' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='arm' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='abw' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='aus' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='aut' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='aze' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='bhs' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='bhr' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='bgd' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='brb' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='blr' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='bel' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='blz' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='ben' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='bmu' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='btn' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='bol' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='bes' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='bih' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='bwa' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='bvt' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='bra' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='iot' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='brn' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='bgr' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='bfa' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='bdi' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='khm' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='cmr' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='can' THEN 'CAN'
#       WHEN dig_ed.post_evar44 ='cpv' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='cym' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='caf' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='tcd' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='chl' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='chn' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='cxr' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='cck' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='col' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='com' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='cog' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='cod' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='cok' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='cri' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='civ' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='hrv' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='cub' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='cuw' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='cyp' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='cze' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='dnk' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='dji' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='dma' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='dom' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='ecu' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='egy' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='slv' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='gnq' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='eri' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='est' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='eth' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='flk' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='fro' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='fji' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='fin' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='fra' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='guf' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='pyf' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='atf' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='gab' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='gmb' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='geo' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='deu' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='gha' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='gib' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='grc' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='grl' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='grd' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='glp' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='gum' THEN 'USA'
#       WHEN dig_ed.post_evar44 ='gtm' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='ggy' THEN 'UK'
#       WHEN dig_ed.post_evar44 ='gin' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='gnb' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='guy' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='hti' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='hmd' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='vat' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='hnd' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='hkg' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='hun' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='isl' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='ind' THEN 'India'
#       WHEN dig_ed.post_evar44 ='idn' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='irn' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='irq' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='irl' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='imn' THEN 'UK'
#       WHEN dig_ed.post_evar44 ='isr' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='ita' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='jam' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='jpn' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='jey' THEN 'UK'
#       WHEN dig_ed.post_evar44 ='jor' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='kaz' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='ken' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='kir' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='prk' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='kor' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='kwt' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='kgz' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='lao' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='lva' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='lbn' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='lso' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='lbr' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='lby' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='lie' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='ltu' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='lux' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='mac' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='mkd' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='mdg' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='mwi' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='mys' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='mdv' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='mli' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='mlt' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='mhl' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='mtq' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='mrt' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='mus' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='myt' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='mex' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='fsm' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='mda' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='mco' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='mng' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='mne' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='msr' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='mar' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='moz' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='mmr' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='nam' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='nru' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='npl' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='nld' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='ncl' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='nzl' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='nic' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='ner' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='nga' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='niu' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='nfk' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='mnp' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='nor' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='omn' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='pak' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='plw' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='pse' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='pan' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='png' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='pry' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='per' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='phl' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='pcn' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='pol' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='prt' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='pri' THEN 'USA'
#       WHEN dig_ed.post_evar44 ='qat' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='reu' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='rou' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='rus' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='rwa' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='blm' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='shn' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='kna' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='lca' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='maf' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='spm' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='vct' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='wsm' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='smr' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='stp' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='sau' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='sen' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='srb' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='syc' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='sle' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='sgp' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='sxm' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='svk' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='svn' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='slb' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='som' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='zaf' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='sgs' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='ssd' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='esp' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='lka' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='sdn' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='sur' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='sjm' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='swz' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='swe' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='che' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='syr' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='twn' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='tjk' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='tza' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='tha' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='tls' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='tgo' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='tkl' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='ton' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='tto' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='tun' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='tur' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='tkm' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='tca' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='tuv' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='uga' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='ukr' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='are' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='gbr' THEN 'UK'
#       WHEN dig_ed.post_evar44 ='usa' THEN 'NA'
#       WHEN dig_ed.post_evar44 ='umi' THEN 'NA'
#       WHEN dig_ed.post_evar44 ='ury' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='uzb' THEN 'CE'
#       WHEN dig_ed.post_evar44 ='vut' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='ven' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='vnm' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='vgb' THEN 'LAAM'
#       WHEN dig_ed.post_evar44 ='vir' THEN 'NA'
#       WHEN dig_ed.post_evar44 ='wlf' THEN 'Asia (ex India)'
#       WHEN dig_ed.post_evar44 ='esh' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='yem' THEN 'MEA'
#       WHEN dig_ed.post_evar44 ='zmb' THEN 'MEA'
#       ELSE 'unspecified'
#       END AS region
#       , dig_ed.exclude_hit
#       , dig_ed.hit_source
#       , dig_ed.ref_type
#       , dig_ed.hitid_high
#       , dig_ed.hitid_low
#       , dig_ed.language
#       , dig_ed.userid
#       , dig_ed.username
#       , dig_ed.visid_new
#       , dig_ed.visid_type
#       , dig_ed.visit_num
#       , dig_ed.visit_page_num
#       , dig_ed.mobile_id
#       , dig_ed.ref_domain
#       , dig_ed.search_engine
#       , dig_ed.post_evar5 as story_title
#       , dig_ed.post_evar2 as issue_date
#       , dig_ed.post_evar25 as drupal_id
#       , dig_ed.post_visid_high ||'_'|| dig_ed.post_visid_low as visitor_id
#       , dig_ed.post_visid_high ||'_'|| dig_ed.post_visid_low ||'_'|| dig_ed.visit_start_time_gmt as visit_id
#       , dig_ed.page_event
#       , dig_ed.post_page_event
#       , NULL as url
#       , NULL as videos
#       , 0 as audio
#       , CASE WHEN dig_ed.post_page_event = 0 OR dig_ed.hit_source in (5, 7, 8, 9) THEN 0 ELSE 1 END as valid_user
#       , CASE WHEN dig_ed.exclude_hit > 0 OR dig_ed.hit_source in (5, 8, 9) THEN 0 ELSE 1 END as valid_view
#       , CASE WHEN dig_ed.exclude_hit > 0 OR dig_ed.hit_source in (5, 7, 8, 9) THEN 0 ELSE 1 END as valid_visit
#       , gcd_mcm.urn
#       , ip
#       , dig_ed.post_visid_high ||'_'|| dig_ed.post_visid_low ||'_'|| dig_ed.visit_start_time_gmt ||'_'|| RANK() OVER (PARTITION BY dig_ed.post_visid_high ||'_'|| dig_ed.post_visid_low ||'_'|| dig_ed.visit_start_time_gmt ORDER BY dig_ed.date_time) as event_id
#       , RANK() OVER (PARTITION BY dig_ed.post_visid_high ||'_'|| dig_ed.post_visid_low ||'_'|| dig_ed.visit_start_time_gmt ORDER BY dig_ed.date_time) AS event_sequence_within_session
#       , RANK() OVER (PARTITION BY dig_ed.post_visid_high ||'_'|| dig_ed.post_visid_low ||'_'|| dig_ed.visit_start_time_gmt ORDER BY dig_ed.date_time desc) AS inverse_event_sequence_within_session
#       , TO_CHAR(DATE_TRUNC('week', dig_ed.date_time),'YYYY-MM-DD') AS "hit_week"
#       , CASE WHEN dig_ed.post_evar4 in ('single_issue_start','subscription_start') THEN 1 ELSE 0 END as subscription_page_new
#       , 0 as subscription_page_renew
#       , CASE WHEN dig_ed.post_evar4 in ('single_issue_complete','subscription_complete') THEN 1 ELSE 0 END as subscription_new
#       , 0 as subscription_renew
#       , 0 as registration
#       , post_event_list
#       , pagename
#       , teg_hit_local_datetime 
#       FROM digitaleditionsapp_hit_data dig_ed
#       LEFT JOIN gcd_mcm ON dig_ed.post_evar25=gcd_mcm.customerkey and gcd_mcm.sourcesystem = 500
#       WHERE
#       dig_ed.hit_source not in (5, 8, 9)
#       UNION
#       SELECT
#       online.date_time
#       , CASE 
#       WHEN lower(online.accept_language) LIKE 'en-us%' THEN 'en-us'
#       WHEN lower(online.accept_language) LIKE 'en-gb%' THEN 'en-gb'
#       WHEN lower(online.accept_language) LIKE 'zh-cn%' THEN 'zh-cn'
#       WHEN lower(online.accept_language) LIKE 'fr-fr%' THEN 'fr-fr'
#       WHEN lower(online.accept_language) LIKE 'ru-ru%' THEN 'ru-ru'
#       WHEN lower(online.accept_language) LIKE 'es-es%' THEN 'es-es'
#       WHEN lower(online.accept_language) LIKE 'de-de%' THEN 'de-de'
#       WHEN lower(online.accept_language) LIKE 'en-ca%' THEN 'en-ca'
#       WHEN lower(online.accept_language) LIKE 'en-au%' THEN 'en-au'
#       WHEN lower(online.accept_language) LIKE 'ja-jp%' THEN 'ja-jp'
#       WHEN lower(online.accept_language) LIKE 'ko-kr%' THEN 'ko-kr'
#       WHEN lower(online.accept_language) LIKE 'it-it%' THEN 'it-it'
#       WHEN lower(online.accept_language) LIKE 'pt-br%' THEN 'pt-br'
#       WHEN lower(online.accept_language) LIKE 'sv-se%' THEN 'sv-se'
#       WHEN lower(online.accept_language) LIKE 'nl-nl%' THEN 'nl-nl'
#       ELSE 'other'
#       END AS accept_language
#       , 'Economist Online' as source
#       , online.browser
#       , online.os
#       , online.connection_type
#       , online.post_evar44 as country
#       , CASE
#       WHEN online.post_evar44 ='afg' THEN 'CE'
#       WHEN online.post_evar44 ='ala' THEN 'CE'
#       WHEN online.post_evar44 ='alb' THEN 'CE'
#       WHEN online.post_evar44 ='dza' THEN 'MEA'
#       WHEN online.post_evar44 ='asm' THEN 'USA'
#       WHEN online.post_evar44 ='and' THEN 'CE'
#       WHEN online.post_evar44 ='ago' THEN 'MEA'
#       WHEN online.post_evar44 ='aia' THEN 'LAAM'
#       WHEN online.post_evar44 ='ata' THEN '::unspecified::'
#       WHEN online.post_evar44 ='atg' THEN 'LAAM'
#       WHEN online.post_evar44 ='arg' THEN 'LAAM'
#       WHEN online.post_evar44 ='arm' THEN 'CE'
#       WHEN online.post_evar44 ='abw' THEN 'LAAM'
#       WHEN online.post_evar44 ='aus' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='aut' THEN 'CE'
#       WHEN online.post_evar44 ='aze' THEN 'CE'
#       WHEN online.post_evar44 ='bhs' THEN 'LAAM'
#       WHEN online.post_evar44 ='bhr' THEN 'MEA'
#       WHEN online.post_evar44 ='bgd' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='brb' THEN 'LAAM'
#       WHEN online.post_evar44 ='blr' THEN 'CE'
#       WHEN online.post_evar44 ='bel' THEN 'CE'
#       WHEN online.post_evar44 ='blz' THEN 'LAAM'
#       WHEN online.post_evar44 ='ben' THEN 'MEA'
#       WHEN online.post_evar44 ='bmu' THEN 'LAAM'
#       WHEN online.post_evar44 ='btn' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='bol' THEN 'LAAM'
#       WHEN online.post_evar44 ='bes' THEN 'LAAM'
#       WHEN online.post_evar44 ='bih' THEN 'CE'
#       WHEN online.post_evar44 ='bwa' THEN 'MEA'
#       WHEN online.post_evar44 ='bvt' THEN 'CE'
#       WHEN online.post_evar44 ='bra' THEN 'LAAM'
#       WHEN online.post_evar44 ='iot' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='brn' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='bgr' THEN 'CE'
#       WHEN online.post_evar44 ='bfa' THEN 'MEA'
#       WHEN online.post_evar44 ='bdi' THEN 'MEA'
#       WHEN online.post_evar44 ='khm' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='cmr' THEN 'MEA'
#       WHEN online.post_evar44 ='can' THEN 'CAN'
#       WHEN online.post_evar44 ='cpv' THEN 'CE'
#       WHEN online.post_evar44 ='cym' THEN 'LAAM'
#       WHEN online.post_evar44 ='caf' THEN 'MEA'
#       WHEN online.post_evar44 ='tcd' THEN 'MEA'
#       WHEN online.post_evar44 ='chl' THEN 'LAAM'
#       WHEN online.post_evar44 ='chn' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='cxr' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='cck' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='col' THEN 'LAAM'
#       WHEN online.post_evar44 ='com' THEN 'MEA'
#       WHEN online.post_evar44 ='cog' THEN 'MEA'
#       WHEN online.post_evar44 ='cod' THEN 'MEA'
#       WHEN online.post_evar44 ='cok' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='cri' THEN 'LAAM'
#       WHEN online.post_evar44 ='civ' THEN 'MEA'
#       WHEN online.post_evar44 ='hrv' THEN 'CE'
#       WHEN online.post_evar44 ='cub' THEN 'LAAM'
#       WHEN online.post_evar44 ='cuw' THEN 'LAAM'
#       WHEN online.post_evar44 ='cyp' THEN 'CE'
#       WHEN online.post_evar44 ='cze' THEN 'CE'
#       WHEN online.post_evar44 ='dnk' THEN 'CE'
#       WHEN online.post_evar44 ='dji' THEN 'MEA'
#       WHEN online.post_evar44 ='dma' THEN 'LAAM'
#       WHEN online.post_evar44 ='dom' THEN 'LAAM'
#       WHEN online.post_evar44 ='ecu' THEN 'LAAM'
#       WHEN online.post_evar44 ='egy' THEN 'MEA'
#       WHEN online.post_evar44 ='slv' THEN 'LAAM'
#       WHEN online.post_evar44 ='gnq' THEN 'MEA'
#       WHEN online.post_evar44 ='eri' THEN 'MEA'
#       WHEN online.post_evar44 ='est' THEN 'CE'
#       WHEN online.post_evar44 ='eth' THEN 'MEA'
#       WHEN online.post_evar44 ='flk' THEN 'LAAM'
#       WHEN online.post_evar44 ='fro' THEN 'CE'
#       WHEN online.post_evar44 ='fji' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='fin' THEN 'CE'
#       WHEN online.post_evar44 ='fra' THEN 'CE'
#       WHEN online.post_evar44 ='guf' THEN 'LAAM'
#       WHEN online.post_evar44 ='pyf' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='atf' THEN 'LAAM'
#       WHEN online.post_evar44 ='gab' THEN 'MEA'
#       WHEN online.post_evar44 ='gmb' THEN 'MEA'
#       WHEN online.post_evar44 ='geo' THEN 'CE'
#       WHEN online.post_evar44 ='deu' THEN 'CE'
#       WHEN online.post_evar44 ='gha' THEN 'MEA'
#       WHEN online.post_evar44 ='gib' THEN 'CE'
#       WHEN online.post_evar44 ='grc' THEN 'CE'
#       WHEN online.post_evar44 ='grl' THEN 'CE'
#       WHEN online.post_evar44 ='grd' THEN 'LAAM'
#       WHEN online.post_evar44 ='glp' THEN 'LAAM'
#       WHEN online.post_evar44 ='gum' THEN 'USA'
#       WHEN online.post_evar44 ='gtm' THEN 'LAAM'
#       WHEN online.post_evar44 ='ggy' THEN 'UK'
#       WHEN online.post_evar44 ='gin' THEN 'MEA'
#       WHEN online.post_evar44 ='gnb' THEN 'MEA'
#       WHEN online.post_evar44 ='guy' THEN 'LAAM'
#       WHEN online.post_evar44 ='hti' THEN 'LAAM'
#       WHEN online.post_evar44 ='hmd' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='vat' THEN 'CE'
#       WHEN online.post_evar44 ='hnd' THEN 'LAAM'
#       WHEN online.post_evar44 ='hkg' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='hun' THEN 'CE'
#       WHEN online.post_evar44 ='isl' THEN 'CE'
#       WHEN online.post_evar44 ='ind' THEN 'India'
#       WHEN online.post_evar44 ='idn' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='irn' THEN 'MEA'
#       WHEN online.post_evar44 ='irq' THEN 'MEA'
#       WHEN online.post_evar44 ='irl' THEN 'CE'
#       WHEN online.post_evar44 ='imn' THEN 'UK'
#       WHEN online.post_evar44 ='isr' THEN 'MEA'
#       WHEN online.post_evar44 ='ita' THEN 'CE'
#       WHEN online.post_evar44 ='jam' THEN 'LAAM'
#       WHEN online.post_evar44 ='jpn' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='jey' THEN 'UK'
#       WHEN online.post_evar44 ='jor' THEN 'MEA'
#       WHEN online.post_evar44 ='kaz' THEN 'CE'
#       WHEN online.post_evar44 ='ken' THEN 'MEA'
#       WHEN online.post_evar44 ='kir' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='prk' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='kor' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='kwt' THEN 'MEA'
#       WHEN online.post_evar44 ='kgz' THEN 'CE'
#       WHEN online.post_evar44 ='lao' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='lva' THEN 'CE'
#       WHEN online.post_evar44 ='lbn' THEN 'MEA'
#       WHEN online.post_evar44 ='lso' THEN 'MEA'
#       WHEN online.post_evar44 ='lbr' THEN 'MEA'
#       WHEN online.post_evar44 ='lby' THEN 'MEA'
#       WHEN online.post_evar44 ='lie' THEN 'CE'
#       WHEN online.post_evar44 ='ltu' THEN 'CE'
#       WHEN online.post_evar44 ='lux' THEN 'CE'
#       WHEN online.post_evar44 ='mac' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='mkd' THEN 'CE'
#       WHEN online.post_evar44 ='mdg' THEN 'MEA'
#       WHEN online.post_evar44 ='mwi' THEN 'MEA'
#       WHEN online.post_evar44 ='mys' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='mdv' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='mli' THEN 'MEA'
#       WHEN online.post_evar44 ='mlt' THEN 'CE'
#       WHEN online.post_evar44 ='mhl' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='mtq' THEN 'LAAM'
#       WHEN online.post_evar44 ='mrt' THEN 'MEA'
#       WHEN online.post_evar44 ='mus' THEN 'MEA'
#       WHEN online.post_evar44 ='myt' THEN 'MEA'
#       WHEN online.post_evar44 ='mex' THEN 'LAAM'
#       WHEN online.post_evar44 ='fsm' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='mda' THEN 'CE'
#       WHEN online.post_evar44 ='mco' THEN 'CE'
#       WHEN online.post_evar44 ='mng' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='mne' THEN 'CE'
#       WHEN online.post_evar44 ='msr' THEN 'LAAM'
#       WHEN online.post_evar44 ='mar' THEN 'MEA'
#       WHEN online.post_evar44 ='moz' THEN 'MEA'
#       WHEN online.post_evar44 ='mmr' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='nam' THEN 'MEA'
#       WHEN online.post_evar44 ='nru' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='npl' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='nld' THEN 'CE'
#       WHEN online.post_evar44 ='ncl' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='nzl' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='nic' THEN 'LAAM'
#       WHEN online.post_evar44 ='ner' THEN 'MEA'
#       WHEN online.post_evar44 ='nga' THEN 'MEA'
#       WHEN online.post_evar44 ='niu' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='nfk' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='mnp' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='nor' THEN 'CE'
#       WHEN online.post_evar44 ='omn' THEN 'MEA'
#       WHEN online.post_evar44 ='pak' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='plw' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='pse' THEN 'MEA'
#       WHEN online.post_evar44 ='pan' THEN 'LAAM'
#       WHEN online.post_evar44 ='png' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='pry' THEN 'LAAM'
#       WHEN online.post_evar44 ='per' THEN 'LAAM'
#       WHEN online.post_evar44 ='phl' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='pcn' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='pol' THEN 'CE'
#       WHEN online.post_evar44 ='prt' THEN 'CE'
#       WHEN online.post_evar44 ='pri' THEN 'USA'
#       WHEN online.post_evar44 ='qat' THEN 'MEA'
#       WHEN online.post_evar44 ='reu' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='rou' THEN 'CE'
#       WHEN online.post_evar44 ='rus' THEN 'CE'
#       WHEN online.post_evar44 ='rwa' THEN 'MEA'
#       WHEN online.post_evar44 ='blm' THEN 'LAAM'
#       WHEN online.post_evar44 ='shn' THEN 'MEA'
#       WHEN online.post_evar44 ='kna' THEN 'LAAM'
#       WHEN online.post_evar44 ='lca' THEN 'LAAM'
#       WHEN online.post_evar44 ='maf' THEN 'LAAM'
#       WHEN online.post_evar44 ='spm' THEN 'LAAM'
#       WHEN online.post_evar44 ='vct' THEN 'LAAM'
#       WHEN online.post_evar44 ='wsm' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='smr' THEN 'CE'
#       WHEN online.post_evar44 ='stp' THEN 'MEA'
#       WHEN online.post_evar44 ='sau' THEN 'MEA'
#       WHEN online.post_evar44 ='sen' THEN 'MEA'
#       WHEN online.post_evar44 ='srb' THEN 'CE'
#       WHEN online.post_evar44 ='syc' THEN 'MEA'
#       WHEN online.post_evar44 ='sle' THEN 'MEA'
#       WHEN online.post_evar44 ='sgp' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='sxm' THEN 'LAAM'
#       WHEN online.post_evar44 ='svk' THEN 'CE'
#       WHEN online.post_evar44 ='svn' THEN 'CE'
#       WHEN online.post_evar44 ='slb' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='som' THEN 'MEA'
#       WHEN online.post_evar44 ='zaf' THEN 'MEA'
#       WHEN online.post_evar44 ='sgs' THEN 'LAAM'
#       WHEN online.post_evar44 ='ssd' THEN 'MEA'
#       WHEN online.post_evar44 ='esp' THEN 'CE'
#       WHEN online.post_evar44 ='lka' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='sdn' THEN 'MEA'
#       WHEN online.post_evar44 ='sur' THEN 'LAAM'
#       WHEN online.post_evar44 ='sjm' THEN 'CE'
#       WHEN online.post_evar44 ='swz' THEN 'MEA'
#       WHEN online.post_evar44 ='swe' THEN 'CE'
#       WHEN online.post_evar44 ='che' THEN 'CE'
#       WHEN online.post_evar44 ='syr' THEN 'MEA'
#       WHEN online.post_evar44 ='twn' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='tjk' THEN 'CE'
#       WHEN online.post_evar44 ='tza' THEN 'MEA'
#       WHEN online.post_evar44 ='tha' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='tls' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='tgo' THEN 'MEA'
#       WHEN online.post_evar44 ='tkl' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='ton' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='tto' THEN 'LAAM'
#       WHEN online.post_evar44 ='tun' THEN 'MEA'
#       WHEN online.post_evar44 ='tur' THEN 'CE'
#       WHEN online.post_evar44 ='tkm' THEN 'CE'
#       WHEN online.post_evar44 ='tca' THEN 'LAAM'
#       WHEN online.post_evar44 ='tuv' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='uga' THEN 'MEA'
#       WHEN online.post_evar44 ='ukr' THEN 'CE'
#       WHEN online.post_evar44 ='are' THEN 'MEA'
#       WHEN online.post_evar44 ='gbr' THEN 'UK'
#       WHEN online.post_evar44 ='usa' THEN 'NA'
#       WHEN online.post_evar44 ='umi' THEN 'NA'
#       WHEN online.post_evar44 ='ury' THEN 'LAAM'
#       WHEN online.post_evar44 ='uzb' THEN 'CE'
#       WHEN online.post_evar44 ='vut' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='ven' THEN 'LAAM'
#       WHEN online.post_evar44 ='vnm' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='vgb' THEN 'LAAM'
#       WHEN online.post_evar44 ='vir' THEN 'NA'
#       WHEN online.post_evar44 ='wlf' THEN 'Asia (ex India)'
#       WHEN online.post_evar44 ='esh' THEN 'MEA'
#       WHEN online.post_evar44 ='yem' THEN 'MEA'
#       WHEN online.post_evar44 ='zmb' THEN 'MEA'
#       ELSE 'unspecified'
#       END AS region
#       , online.exclude_hit
#       , online.hit_source
#       , online.ref_type
#       , online.hitid_high
#       , online.hitid_low
#       , online.language
#       , online.userid
#       , online.username
#       , online.visid_new
#       , online.visid_type
#       , online.visit_num
#       , online.visit_page_num
#       , online.mobile_id
#       , online.ref_domain
#       , online.search_engine
#       , online.post_evar5 as story_title
#       , online.post_evar2 as issue_date
#       , online.prop40 as drupal_id
#       , online.visid_high ||'_'|| online.visid_low as visitor_id
#       , online.visid_high ||'_'|| online.visid_low ||'_'|| online.visit_start_time_gmt as visit_id
#       , online.page_event
#       , online.post_page_event
#       , online.post_evar32 as url
#       , LEFT(online.post_evar27,15) as videos
#       , CASE WHEN online.post_evar27 is null and online.post_evar64 is not null then 1 else 0 end as audio
#       , CASE WHEN online.exclude_hit>0 OR online.hit_source in (5, 7, 8, 9) THEN 0 ELSE 1 END as valid_user
#       , CASE WHEN online.exclude_hit > 0 OR online.hit_source in (5, 8, 9) THEN 0 ELSE 1 END as valid_view
#       , CASE WHEN online.exclude_hit > 0 OR online.hit_source in (5, 7, 8, 9) THEN 0 ELSE 1 END as valid_visit
#       , gcd_mcm.urn
#       , ip
#       , online.visid_high ||'_'|| online.visid_low ||'_'|| online.visit_start_time_gmt ||'_'|| RANK() OVER (PARTITION BY online.visid_high ||'_'|| online.visid_low ||'_'|| online.visit_start_time_gmt ORDER BY online.date_time) as event_id
#       , RANK() OVER (PARTITION BY online.visid_high ||'_'|| online.visid_low ||'_'|| online.visit_start_time_gmt ORDER BY online.date_time) AS event_sequence_within_session
#       , RANK() OVER (PARTITION BY online.visid_high ||'_'|| online.visid_low ||'_'|| online.visit_start_time_gmt ORDER BY online.date_time desc) AS inverse_event_sequence_within_session
#       , TO_CHAR(DATE_TRUNC('week', online.date_time),'YYYY-MM-DD') AS "hit_week"
#       , CASE WHEN (online.post_event_list like '%249%' AND (online.pagename = 'econ_sub|unbundle|landing' OR online.pagename like 'econ_sub|unbundle|landing%')) THEN 1 ELSE 0 END as subscription_page_new
#       , CASE WHEN (online.post_event_list like '%249%' AND (online.pagename = 'econ_sub|renewal|landing%' OR online.pagename like 'econ_sub|renewal|landing%')) THEN 1 ELSE 0 END as subscription_page_renew
#       , CASE WHEN (online.post_event_list like '%299%' AND pagename like 'econ_sub|unbundle|confirm_%' AND online.pagename NOT LIKE '%_upsell') THEN 1 ELSE 0 END  AS subscription_new
#       , CASE WHEN (online.post_event_list like '%299%' AND pagename like 'econ_sub|renewal|confirm_%' AND online.pagename NOT LIKE '%_upsell') THEN 1 ELSE 0 END AS subscription_renew
#       , CASE WHEN online.post_event_list like '%202%' THEN 1 ELSE 0 END as registration
#       , post_event_list
#       , pagename
#       , teg_hit_local_datetime
#       FROM economistonline_hit_data online
#       LEFT JOIN gcd_mcm ON online.prop40=gcd_mcm.customerkey and gcd_mcm.sourcesystem = 500
#       WHERE
#       online.exclude_hit=0
#       AND online.hit_source not in (5, 8, 9)
#       AND online.ip not in
#       ('76.74.136.173',
#       '208.93.112.82',
#       '208.115.62.189',
#       '208.88.49.116',
#       '72.35.68.151',
#       '122.99.116.252',
#       '208.64.29.162',
#       '64.151.64.36',
#       '173.234.33.130',
#       '212.34.152.222',
#       '93.158.114.78',
#       '78.153.204.52',
#       '83.133.122.246',
#       '208.115.48.247',
#       '65.39.204.105',
#       '64.34.165.189',
#       '211.99.248.44',
#       '64.71.140.53',
#       '216.151.3.25',
#       '208.115.62.204',
#       '196.201.6.112',
#       '78.110.165.82',
#       '69.90.42.101',
#       '67.58.96.43',
#       '99.192.170.53',
#       '118.127.32.144',
#       '208.115.62.173',
#       '216.155.155.184',
#       '72.35.68.141',
#       '216.93.249.82',
#       '182.18.182.46',
#       '199.36.105.26',
#       '208.115.62.223',
#       '66.90.103.248',
#       '69.90.184.74',
#       '77.79.11.40',
#       '209.144.26.52',
#       '213.108.251.31',
#       '81.218.234.138',
#       '65.18.195.129',
#       '208.93.112.83',
#       '208.115.62.190',
#       '208.88.49.149',
#       '72.35.68.152',
#       '5.134.1.234',
#       '72.46.128.170',
#       '64.151.89.68',
#       '74.126.82.60',
#       '77.240.1.161',
#       '91.236.116.217',
#       '78.153.204.53',
#       '65.39.204.98',
#       '208.115.48.248',
#       '65.39.204.107',
#       '46.19.138.186',
#       '202.85.221.97',
#       '64.71.140.54',
#       '216.151.3.26',
#       '208.115.62.203',
#       '196.201.6.110',
#       '94.229.76.26',
#       '69.90.42.103',
#       '67.58.96.44',
#       '95.141.34.234',
#       '202.130.33.58',
#       '204.2.244.20',
#       '87.98.212.251',
#       '72.35.68.142',
#       '216.93.249.83',
#       '182.18.182.48',
#       '208.85.242.244',
#       '208.115.62.224',
#       '66.90.103.45',
#       '69.90.184.75',
#       '77.79.11.41',
#       '209.144.26.53',
#       '85.192.33.33',
#       '219.117.207.179',
#       '65.18.195.237',
#       '208.93.112.80',
#       '46.165.212.101',
#       '208.88.49.150',
#       '46.21.158.66',
#       '5.134.1.235',
#       '89.106.180.82',
#       '69.59.152.4',
#       '74.126.82.61',
#       '77.240.1.162',
#       '93.158.114.61',
#       '78.153.204.54',
#       '65.39.204.109',
#       '208.115.48.249',
#       '65.39.204.108',
#       '46.19.138.190',
#       '211.99.248.45',
#       '64.71.140.55',
#       '216.151.3.27',
#       '208.115.62.231',
#       '72.15.252.84',
#       '94.229.69.74',
#       '61.100.10.83',
#       '67.58.96.45',
#       '95.141.34.235',
#       '202.130.33.59',
#       '208.115.62.174',
#       '87.98.212.252',
#       '72.35.68.143',
#       '216.93.249.84',
#       '182.18.182.50',
#       '208.85.242.245',
#       '208.115.62.225',
#       '66.90.104.22',
#       '69.90.184.76',
#       '202.157.154.21',
#       '64.78.153.228',
#       '213.108.251.33',
#       '69.64.248.18',
#       '65.39.204.112',
#       '65.18.195.238',
#       '208.93.112.81',
#       '46.165.212.102',
#       '208.88.49.151',
#       '46.21.158.67',
#       '5.134.1.236',
#       '89.106.180.83',
#       '208.113.96.148',
#       '74.126.82.62',
#       '77.240.1.163',
#       '91.236.116.218',
#       '204.2.244.17',
#       '208.115.48.250',
#       '173.234.233.90',
#       '46.19.141.154',
#       '202.85.221.98',
#       '64.71.140.56',
#       '38.109.170.50',
#       '208.115.62.230',
#       '72.15.252.85',
#       '94.229.64.158',
#       '61.100.10.85',
#       '209.223.236.250',
#       '95.141.34.236',
#       '202.130.33.60',
#       '176.56.226.140',
#       '204.2.244.21',
#       '87.98.212.223',
#       '72.35.68.144',
#       '216.93.249.85',
#       '162.216.98.82',
#       '208.85.242.246',
#       '208.115.62.226',
#       '66.90.104.24',
#       '69.90.184.77',
#       '202.157.154.2',
#       '64.78.153.229',
#       '85.192.33.35',
#       '219.117.207.180',
#       '65.39.204.113',
#       '216.187.109.82',
#       '114.23.33.58',
#       '46.165.212.103',
#       '209.250.31.21',
#       '46.21.158.68',
#       '201.235.255.70',
#       '89.106.180.84',
#       '64.151.91.132',
#       '207.54.159.84',
#       '77.240.1.164',
#       '203.12.0.89',
#       '208.115.62.185',
#       '208.115.48.251',
#       '64.120.46.202',
#       '209.196.10.76',
#       '211.99.248.46',
#       '64.71.140.57',
#       '199.36.111.226',
#       '208.115.62.234',
#       '72.15.252.86',
#       '69.90.184.68',
#       '61.100.10.87',
#       '209.223.236.251',
#       '216.185.196.42',
#       '27.50.87.227',
#       '176.56.226.142',
#       '208.115.62.175',
#       '118.88.21.35',
#       '72.35.68.145',
#       '216.93.249.86',
#       '162.216.98.83',
#       '208.85.242.247',
#       '208.115.62.227',
#       '70.32.33.122',
#       '173.254.192.50',
#       '202.157.154.3',
#       '64.78.153.230',
#       '213.108.251.35',
#       '69.64.248.19',
#       '65.39.204.99',
#       '216.187.109.84',
#       '114.23.33.59',
#       '46.165.212.104',
#       '209.250.31.22',
#       '46.21.158.69',
#       '201.235.255.71',
#       '89.106.180.85',
#       '200.143.186.100',
#       '207.54.159.85',
#       '77.240.1.165',
#       '118.127.32.141',
#       '204.2.244.19',
#       '208.115.48.252',
#       '173.208.58.234',
#       '72.35.68.131',
#       '202.85.221.99',
#       '202.157.180.120',
#       '38.109.170.51',
#       '208.115.62.236',
#       '74.63.64.48',
#       '69.90.184.78',
#       '203.142.12.49',
#       '209.223.236.252',
#       '216.185.196.43',
#       '27.50.87.225',
#       '176.56.226.144',
#       '204.2.244.30',
#       '118.88.21.36',
#       '72.35.68.146',
#       '209.190.168.36',
#       '162.216.98.84',
#       '208.85.242.250',
#       '208.115.62.229',
#       '70.32.39.42',
#       '173.254.192.51',
#       '64.39.226.82',
#       '64.78.153.231',
#       '202.157.191.67',
#       '219.117.207.178',
#       '65.39.204.100',
#       '216.187.109.85',
#       '114.23.33.60',
#       '46.165.204.130',
#       '209.250.31.23',
#       '46.21.158.70',
#       '201.235.255.72',
#       '89.106.180.86',
#       '200.143.186.101',
#       '207.54.159.86',
#       '77.240.1.166',
#       '203.12.0.90',
#       '208.115.62.186',
#       '208.115.48.253',
#       '173.234.117.146',
#       '72.35.68.132',
#       '83.166.171.123',
#       '203.142.28.180',
#       '199.36.111.227',
#       '208.115.62.202',
#       '74.63.64.47',
#       '69.90.184.69',
#       '222.73.34.60',
#       '209.223.236.253',
#       '216.185.196.44',
#       '206.51.230.175',
#       '208.93.114.66',
#       '208.115.62.176',
#       '118.88.21.37',
#       '72.35.68.147',
#       '209.190.168.37',
#       '111.90.138.213',
#       '208.85.242.251',
#       '209.156.160.90',
#       '69.147.230.98',
#       '173.254.192.52',
#       '64.39.226.83',
#       '208.79.212.146',
#       '202.157.191.84',
#       '69.64.248.20',
#       '65.39.204.101',
#       '64.34.165.219',
#       '207.200.58.106',
#       '46.165.204.131',
#       '209.250.31.24',
#       '46.21.158.71',
#       '41.215.241.2',
#       '89.106.180.88',
#       '200.143.186.102',
#       '82.103.128.72',
#       '77.240.1.167',
#       '118.127.32.142',
#       '204.2.244.11',
#       '208.115.48.254',
#       '216.155.155.180',
#       '72.35.68.130',
#       '83.166.171.124',
#       '203.142.28.181',
#       '38.109.170.52',
#       '208.115.62.233',
#       '74.63.64.50',
#       '69.90.184.70',
#       '203.142.12.23',
#       '209.223.236.254',
#       '65.39.172.34',
#       '206.51.231.18',
#       '208.93.114.67',
#       '208.115.62.177',
#       '118.88.21.38',
#       '72.35.68.148',
#       '209.190.168.38',
#       '111.90.138.215',
#       '208.85.242.248',
#       '68.16.117.54',
#       '64.120.14.114',
#       '173.254.192.53',
#       '64.39.226.84',
#       '208.79.212.147',
#       '202.157.191.85',
#       '76.74.136.170',
#       '65.39.204.102',
#       '64.34.171.99',
#       '207.200.58.107',
#       '46.165.225.142',
#       '209.166.131.116',
#       '46.21.158.72',
#       '41.215.241.90',
#       '94.229.65.194',
#       '69.90.42.98',
#       '82.103.128.77',
#       '99.192.170.50',
#       '203.12.0.91',
#       '208.115.62.171',
#       '204.2.244.12',
#       '216.155.155.181',
#       '72.35.68.138',
#       '83.166.171.125',
#       '216.230.228.34',
#       '199.36.111.228',
#       '208.115.62.220',
#       '74.63.64.49',
#       '69.90.184.71',
#       '222.73.34.61',
#       '209.223.236.170',
#       '65.39.172.36',
#       '206.51.225.159',
#       '76.74.136.171',
#       '208.93.114.68',
#       '208.115.53.131',
#       '208.88.49.114',
#       '72.35.68.149',
#       '122.99.116.250',
#       '111.90.151.35',
#       '198.241.44.148',
#       '208.115.62.214',
#       '69.147.242.18',
#       '212.34.134.205',
#       '93.158.114.140',
#       '208.79.212.148',
#       '83.133.121.221',
#       '208.115.62.179',
#       '65.39.204.103',
#       '64.34.164.186',
#       '207.200.58.108',
#       '64.71.140.50',
#       '209.166.131.117',
#       '208.115.62.200',
#       '41.215.241.98',
#       '94.229.65.195',
#       '69.90.42.99',
#       '82.103.129.140',
#       '99.192.170.51',
#       '118.127.32.143',
#       '208.115.62.172',
#       '216.155.155.182',
#       '72.35.68.139',
#       '83.166.171.121',
#       '216.230.228.35',
#       '199.36.105.2',
#       '208.115.62.221',
#       '74.63.64.101',
#       '69.90.184.72',
#       '203.142.12.24',
#       '209.144.26.50',
#       '65.39.172.37',
#       '81.218.234.139',
#       '76.74.136.172',
#       '208.93.114.69',
#       '208.115.62.178',
#       '208.88.49.115',
#       '72.35.68.150',
#       '122.99.116.251',
#       '208.66.76.58',
#       '198.241.44.149',
#       '208.115.62.215',
#       '173.208.80.66',
#       '212.34.152.221',
#       '91.236.116.216',
#       '208.79.212.149',
#       '83.133.119.194',
#       '208.115.62.191',
#       '65.39.204.104',
#       '64.34.171.27',
#       '207.200.58.109',
#       '64.71.140.52',
#       '209.166.131.118',
#       '208.115.62.235',
#       '196.201.6.111',
#       '94.229.65.196',
#       '69.90.42.100',
#       '67.58.96.42',
#       '99.192.170.52',
#       '203.12.0.184',
#       '204.2.244.10',
#       '216.155.155.183',
#       '72.35.68.140',
#       '83.166.171.118',
#       '216.230.228.36',
#       '199.36.105.3',
#       '208.115.62.222',
#       '66.90.103.125',
#       '69.90.184.73',
#       '77.79.11.10',
#       '209.144.26.51',
#       '85.192.33.31',
#       '81.218.234.140')
#       UNION
#       SELECT
#       esp_app.date_time
#       , lower(esp_app.accept_language) as accept_language
#       ,'Espresso' as source
#       , esp_app.browser
#       , esp_app.os
#       , esp_app.connection_type
#       , esp_app.post_evar44 as country
#       , CASE
#       WHEN esp_app.post_evar44 ='afg' THEN 'CE'
#       WHEN esp_app.post_evar44 ='ala' THEN 'CE'
#       WHEN esp_app.post_evar44 ='alb' THEN 'CE'
#       WHEN esp_app.post_evar44 ='dza' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='asm' THEN 'USA'
#       WHEN esp_app.post_evar44 ='and' THEN 'CE'
#       WHEN esp_app.post_evar44 ='ago' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='aia' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='ata' THEN '::unspecified::'
#       WHEN esp_app.post_evar44 ='atg' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='arg' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='arm' THEN 'CE'
#       WHEN esp_app.post_evar44 ='abw' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='aus' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='aut' THEN 'CE'
#       WHEN esp_app.post_evar44 ='aze' THEN 'CE'
#       WHEN esp_app.post_evar44 ='bhs' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='bhr' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='bgd' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='brb' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='blr' THEN 'CE'
#       WHEN esp_app.post_evar44 ='bel' THEN 'CE'
#       WHEN esp_app.post_evar44 ='blz' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='ben' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='bmu' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='btn' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='bol' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='bes' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='bih' THEN 'CE'
#       WHEN esp_app.post_evar44 ='bwa' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='bvt' THEN 'CE'
#       WHEN esp_app.post_evar44 ='bra' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='iot' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='brn' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='bgr' THEN 'CE'
#       WHEN esp_app.post_evar44 ='bfa' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='bdi' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='khm' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='cmr' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='can' THEN 'CAN'
#       WHEN esp_app.post_evar44 ='cpv' THEN 'CE'
#       WHEN esp_app.post_evar44 ='cym' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='caf' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='tcd' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='chl' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='chn' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='cxr' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='cck' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='col' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='com' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='cog' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='cod' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='cok' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='cri' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='civ' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='hrv' THEN 'CE'
#       WHEN esp_app.post_evar44 ='cub' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='cuw' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='cyp' THEN 'CE'
#       WHEN esp_app.post_evar44 ='cze' THEN 'CE'
#       WHEN esp_app.post_evar44 ='dnk' THEN 'CE'
#       WHEN esp_app.post_evar44 ='dji' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='dma' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='dom' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='ecu' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='egy' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='slv' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='gnq' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='eri' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='est' THEN 'CE'
#       WHEN esp_app.post_evar44 ='eth' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='flk' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='fro' THEN 'CE'
#       WHEN esp_app.post_evar44 ='fji' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='fin' THEN 'CE'
#       WHEN esp_app.post_evar44 ='fra' THEN 'CE'
#       WHEN esp_app.post_evar44 ='guf' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='pyf' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='atf' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='gab' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='gmb' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='geo' THEN 'CE'
#       WHEN esp_app.post_evar44 ='deu' THEN 'CE'
#       WHEN esp_app.post_evar44 ='gha' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='gib' THEN 'CE'
#       WHEN esp_app.post_evar44 ='grc' THEN 'CE'
#       WHEN esp_app.post_evar44 ='grl' THEN 'CE'
#       WHEN esp_app.post_evar44 ='grd' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='glp' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='gum' THEN 'USA'
#       WHEN esp_app.post_evar44 ='gtm' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='ggy' THEN 'UK'
#       WHEN esp_app.post_evar44 ='gin' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='gnb' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='guy' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='hti' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='hmd' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='vat' THEN 'CE'
#       WHEN esp_app.post_evar44 ='hnd' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='hkg' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='hun' THEN 'CE'
#       WHEN esp_app.post_evar44 ='isl' THEN 'CE'
#       WHEN esp_app.post_evar44 ='ind' THEN 'India'
#       WHEN esp_app.post_evar44 ='idn' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='irn' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='irq' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='irl' THEN 'CE'
#       WHEN esp_app.post_evar44 ='imn' THEN 'UK'
#       WHEN esp_app.post_evar44 ='isr' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='ita' THEN 'CE'
#       WHEN esp_app.post_evar44 ='jam' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='jpn' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='jey' THEN 'UK'
#       WHEN esp_app.post_evar44 ='jor' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='kaz' THEN 'CE'
#       WHEN esp_app.post_evar44 ='ken' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='kir' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='prk' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='kor' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='kwt' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='kgz' THEN 'CE'
#       WHEN esp_app.post_evar44 ='lao' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='lva' THEN 'CE'
#       WHEN esp_app.post_evar44 ='lbn' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='lso' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='lbr' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='lby' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='lie' THEN 'CE'
#       WHEN esp_app.post_evar44 ='ltu' THEN 'CE'
#       WHEN esp_app.post_evar44 ='lux' THEN 'CE'
#       WHEN esp_app.post_evar44 ='mac' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='mkd' THEN 'CE'
#       WHEN esp_app.post_evar44 ='mdg' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='mwi' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='mys' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='mdv' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='mli' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='mlt' THEN 'CE'
#       WHEN esp_app.post_evar44 ='mhl' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='mtq' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='mrt' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='mus' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='myt' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='mex' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='fsm' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='mda' THEN 'CE'
#       WHEN esp_app.post_evar44 ='mco' THEN 'CE'
#       WHEN esp_app.post_evar44 ='mng' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='mne' THEN 'CE'
#       WHEN esp_app.post_evar44 ='msr' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='mar' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='moz' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='mmr' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='nam' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='nru' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='npl' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='nld' THEN 'CE'
#       WHEN esp_app.post_evar44 ='ncl' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='nzl' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='nic' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='ner' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='nga' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='niu' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='nfk' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='mnp' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='nor' THEN 'CE'
#       WHEN esp_app.post_evar44 ='omn' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='pak' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='plw' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='pse' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='pan' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='png' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='pry' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='per' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='phl' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='pcn' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='pol' THEN 'CE'
#       WHEN esp_app.post_evar44 ='prt' THEN 'CE'
#       WHEN esp_app.post_evar44 ='pri' THEN 'USA'
#       WHEN esp_app.post_evar44 ='qat' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='reu' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='rou' THEN 'CE'
#       WHEN esp_app.post_evar44 ='rus' THEN 'CE'
#       WHEN esp_app.post_evar44 ='rwa' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='blm' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='shn' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='kna' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='lca' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='maf' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='spm' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='vct' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='wsm' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='smr' THEN 'CE'
#       WHEN esp_app.post_evar44 ='stp' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='sau' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='sen' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='srb' THEN 'CE'
#       WHEN esp_app.post_evar44 ='syc' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='sle' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='sgp' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='sxm' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='svk' THEN 'CE'
#       WHEN esp_app.post_evar44 ='svn' THEN 'CE'
#       WHEN esp_app.post_evar44 ='slb' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='som' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='zaf' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='sgs' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='ssd' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='esp' THEN 'CE'
#       WHEN esp_app.post_evar44 ='lka' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='sdn' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='sur' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='sjm' THEN 'CE'
#       WHEN esp_app.post_evar44 ='swz' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='swe' THEN 'CE'
#       WHEN esp_app.post_evar44 ='che' THEN 'CE'
#       WHEN esp_app.post_evar44 ='syr' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='twn' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='tjk' THEN 'CE'
#       WHEN esp_app.post_evar44 ='tza' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='tha' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='tls' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='tgo' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='tkl' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='ton' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='tto' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='tun' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='tur' THEN 'CE'
#       WHEN esp_app.post_evar44 ='tkm' THEN 'CE'
#       WHEN esp_app.post_evar44 ='tca' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='tuv' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='uga' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='ukr' THEN 'CE'
#       WHEN esp_app.post_evar44 ='are' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='gbr' THEN 'UK'
#       WHEN esp_app.post_evar44 ='usa' THEN 'NA'
#       WHEN esp_app.post_evar44 ='umi' THEN 'NA'
#       WHEN esp_app.post_evar44 ='ury' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='uzb' THEN 'CE'
#       WHEN esp_app.post_evar44 ='vut' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='ven' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='vnm' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='vgb' THEN 'LAAM'
#       WHEN esp_app.post_evar44 ='vir' THEN 'NA'
#       WHEN esp_app.post_evar44 ='wlf' THEN 'Asia (ex India)'
#       WHEN esp_app.post_evar44 ='esh' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='yem' THEN 'MEA'
#       WHEN esp_app.post_evar44 ='zmb' THEN 'MEA'
#       ELSE 'unspecified'
#       END AS region
#       , esp_app.exclude_hit
#       , esp_app.hit_source
#       , esp_app.ref_type
#       , esp_app.hitid_high
#       , esp_app.hitid_low
#       , esp_app.language
#       , esp_app.userid
#       , esp_app.username
#       , esp_app.visid_new
#       , esp_app.visid_type
#       , esp_app.visit_num
#       , esp_app.visit_page_num
#       , esp_app.mobile_id
#       , esp_app.ref_domain
#       , esp_app.search_engine
#       , esp_app.post_evar5 as story_title
#       , esp_app.post_evar2 as issue_date
#       , esp_app.post_evar8 as drupal_id
#       , esp_app.post_visid_high ||'_'|| esp_app.post_visid_low as visitor_id
#       , esp_app.post_visid_high ||'_'|| esp_app.post_visid_low ||'_'|| esp_app.visit_start_time_gmt as visit_id
#       , esp_app.page_event
#       , esp_app.post_page_event
#       , NULL as url
#       , NULL as videos
#       , 0 as audio
#       , CASE WHEN esp_app.post_page_event = 0 OR esp_app.hit_source in (5, 7, 8, 9) THEN 0 ELSE 1 END as valid_user
#       , CASE WHEN esp_app.exclude_hit > 0 OR esp_app.hit_source in (5, 8, 9) THEN 0 ELSE 1 END as valid_view
#       , CASE WHEN esp_app.exclude_hit > 0 OR esp_app.hit_source in (5, 7, 8, 9) THEN 0 ELSE 1 END as valid_visit
#       , gcd_mcm.urn
#       , esp_app.ip 
#       , esp_app.post_visid_high ||'_'|| esp_app.post_visid_low ||'_'|| esp_app.visit_start_time_gmt ||'_'|| RANK() OVER (PARTITION BY esp_app.post_visid_high ||'_'|| esp_app.post_visid_low ||'_'|| esp_app.visit_start_time_gmt ORDER BY esp_app.date_time) as event_id
#       , RANK() OVER (PARTITION BY esp_app.post_visid_high ||'_'|| esp_app.post_visid_low ||'_'|| esp_app.visit_start_time_gmt ORDER BY esp_app.date_time) AS event_sequence_within_session
#       , RANK() OVER (PARTITION BY esp_app.post_visid_high ||'_'|| esp_app.post_visid_low ||'_'|| esp_app.visit_start_time_gmt ORDER BY esp_app.date_time desc) AS inverse_event_sequence_within_session
#       , TO_CHAR(DATE_TRUNC('week', esp_app.date_time),'YYYY-MM-DD') AS "hit_week"
#       , CASE WHEN esp_app.post_evar2 in ('SubscriptionStart','FreeSubscriptionStart') THEN 1 ELSE 0 END as subscription_page_new
#       , 0 as subscription_page_renew
#       , CASE WHEN esp_app.post_evar2 in ('SubscriptionComplete','FreeSubscriptionComplete') THEN 1 ELSE 0 END as subscription_new
#       , 0 as subscription_renew
#       , 0 as registration
#       , post_event_list
#       , pagename
#       , teg_hit_local_datetime
#       FROM espressoapp_hit_data esp_app
#       LEFT JOIN gcd_mcm ON esp_app.prop40=gcd_mcm.customerkey and gcd_mcm.sourcesystem = 500
#       WHERE
#       esp_app.hit_source not in (5, 8, 9)
#     sortkeys: [date_time, event_sequence_within_session]
#     distkey: visitor_id
#     sql_trigger_value: SELECT 1



  fields:
  
  - dimension: brand
    hidden: true
    sql: |
      CASE WHEN ${source} in ('Digital App','Economist Online') THEN 'The Economist'
      WHEN ${source}='Espresso' THEN 'Espresso'
      END
  
  - dimension: event_id
    hidden: true
    primary_key: true
    sql: ${TABLE}.event_id
    
  - dimension: hit_week_id
    hidden: true
    sql: ${TABLE}.hit_week
    
  - dimension: event_sequence_within_session
    sql: ${TABLE}.event_sequence_within_session
  
  - dimension: inverse_event_sequence_within_session
    sql: ${TABLE}.inverse_event_sequence_within_session

  - dimension_group: clickstream
    type: time
    timeframes: [time, date, week, month, quarter, year, day_of_week, hour_of_day]
    sql: ${TABLE}.date_time
    
  - dimension: date_time
    hidden: true
    sql: ${TABLE}.date_time

  - dimension: accept_language
    type: string
    sql: ${TABLE}.accept_language

  - dimension: source
    type: string
    sql: ${TABLE}.source
    html: |
      {{ value }}
      <a href="/dashboards/4?Source%20Filter={{ value | url_encode }}" target="_new">
      <img src="/images/qr-graph-line@2x.png" height=20 width=20></a>
    suggestions: [Economist Online, Digital App, Espresso]
    
  - dimension: browser
    hidden: true
    type: int
    sql: ${TABLE}.browser
    
  - dimension: os
    type: int
    hidden: true
    sql: ${TABLE}.os

  - dimension: connection_type
    type: int
    sql: ${TABLE}.connection_type

  - dimension: country
    type: string
    hidden: true
    sql: ${TABLE}.country

  - dimension: region
    type: string
    sql: ${TABLE}.region

  - dimension: exclude_hit
    type: int
    sql: ${TABLE}.exclude_hit

  - dimension: hit_source
    type: int
    sql: ${TABLE}.hit_source
    
  - dimension: ref_type
    type: int
    hidden: true
    sql: ${TABLE}.ref_type

  - dimension: hitid_high
    hidden: true
    type: int
    sql: ${TABLE}.hitid_high

  - dimension: hitid_low
    hidden: true
    type: int
    sql: ${TABLE}.hitid_low

  - dimension: language
    type: int
    hidden: true
    sql: ${TABLE}.language

  - dimension: userid
    type: int
    sql: ${TABLE}.userid

  - dimension: username
    type: string
    sql: ${TABLE}.username

#   - dimension: visid_new
#     type: string
#     sql: ${TABLE}.visid_new
# 
#   - dimension: visid_type
#     type: int
#     sql: ${TABLE}.visid_type

  - dimension: visit_num
    type: int
    sql: ${TABLE}.visit_num

  - dimension: visit_page_num
    type: int
    sql: ${TABLE}.visit_page_num

  - dimension: mobile_id
    hidden: true
    type: int
    sql: ${TABLE}.mobile_id

  - dimension: ref_domain
    type: string
    hidden: true
    sql: ${TABLE}.ref_domain
    
  - dimension: ref_domain_grouped
    sql: |
          case when ${ref_domain} like '%google%' then 'google (multiple domains)'
          else ${ref_domain}
          end
    
  - dimension: search_engine
    type: int
    hidden: true
    sql: ${TABLE}.search_engine
    
  - dimension: story_title
    type: string
    sql: ${TABLE}.story_title

  - dimension: issue_date
    type: string
    sql: ${TABLE}.issue_date

  - dimension: drupal_id
    type: string
    sql: ${TABLE}.drupal_id

  - dimension: visitor_id
    type: string
    sql: ${TABLE}.visitor_id

  - dimension: visit_id
    type: string
    sql: ${TABLE}.visit_id

  - dimension: page_event
    type: int
    sql: ${TABLE}.page_event

  - dimension: post_page_event
    type: int
    sql: ${TABLE}.post_page_event

  - dimension: videos
    type: string
    sql: ${TABLE}.videos

  - dimension: audio
    type: yesno
    sql: ${TABLE}.audio
    
  - dimension: valid_user
    type: yesno
    sql: ${TABLE}.valid_user
    
  - dimension: valid_pageview
    type: yesno
    sql: ${TABLE}.valid_view
    
  - dimension: valid_visit
    type: yesno
    sql: ${TABLE}.valid_visit
    
  - dimension: urn
    type: int
    sql: ${TABLE}.urn
    
  - dimension: url
    type: string
    sql: ${TABLE}.url
    
  - dimension: story_title_with_link
    # this dim gives you a hyperlink to the article next to it 
    sql: ${TABLE}.story_title
    html: |
      {{ value }}
      <a href="{{ hit_data_combined.url._value }}" target="_new">
      <img src="http://www.economist.com/favicon.ico" height=10 width=10></a>
      
  - dimension: has_urn
    type: yesno
    sql: ${urn} is not null
  
  - dimension: has_drupal_id
    type: yesno
    sql: ${drupal_id} <> ''

  - dimension: rpc_subscriber_coefficient
    hidden: true
    sql_case:
      2.92: ${region}='UK'
      2.61: ${region}='CE'
      3.46: ${region}='MEA'
      3.55: ${region} in ('Asia (ex India)','India','NA','LAAM', 'USA', 'CAN')
      else: 1
  
  - dimension: ip
    type: string
    sql: ${TABLE}.ip
  
  - dimension: subscription_page_new
    type: yesno
    sql: ${TABLE}.subscription_page_new=1
    
  - dimension: subscription_page_renew
    type: yesno
    sql: ${TABLE}.subscription_page_renew=1
    
  - dimension: subscription_page
    type: yesno
    sql: ${subscription_page_new} OR ${subscription_page_renew}
    
  - dimension: registration
    type: yesno
    sql: ${TABLE}.registration=1
    
  - dimension: subscription_new
    type: yesno
    sql: ${TABLE}.subscription_new=1
    
  - dimension: subscription_renew
    type: yesno
    sql: ${TABLE}.subscription_renew=1
    
  - dimension: subscription
    type: yesno
    sql: ${subscription_new} OR ${subscription_renew}
    
  - dimension: grouped_visitor_id #This is a temporary dimension until the correct formula is established
    hidden: true
    type: string
    sql: coalesce(coalesce(NULLIF(NULLIF(drupal_id::varchar,'0'),''),NULLIF(NULLIF(urn::varchar,'0'),'')),visitor_id) 
    
  
  - dimension: pagename
    type: string
    sql: ${TABLE}.pagename
  
  - dimension_group: clickstream_local
    type: time
    timeframes: [time, date, week, month, quarter, year, day_of_week, hour_of_day]
    sql: ${TABLE}.teg_hit_local_datetime
    
  - dimension: hit_local_datetime
    hidden: true
    sql: ${TABLE}.teg_hit_local_datetime

  
# MEASURES

  - measure: event_count
    type: count
#     drill_fields: detail*
    
  - measure: subscription_page_hit_count
    type: count
    filter:
      subscription_page: Yes 
      
  - measure: subscription_page_visitor_count
    type: count_distinct
    sql: ${visitor_id}
    filter:
      subscription_page: Yes 
      
  - measure: subscription_page_hit_average
    type: number
    sql: ${subscription_page_hit_count}::float/NULLIF(${unique_visitors},0)
    value_format: '#,##0.000'
    
  - measure: registration_count
    type: count_distinct
    sql: ${visitor_id}
    filter:
      registration: Yes
      
  - measure: subscription_count
    type: count_distinct
    sql: ${visitor_id}
    filter:
      subscription: Yes 
      
  - measure: subscription_new_count
    type: count_distinct
    sql: ${visitor_id}
    filter:
      subscription_new: Yes 
    
  - measure: subscription_renew_count
    type: count_distinct
    sql: ${visitor_id}
    filter:
      subscription_renew: Yes 
      
  - measure: subscription_renew_to_new_ratio
    type: number
    sql: ${subscription_renew_count}::float/NULLIF(${subscription_new_count},0)
    value_format: '#0.0%'
      
  - measure: source_count
    type: count
    #sql: ${source}
    
  - measure: unique_visitors
    type: count_distinct
    sql: ${visitor_id}
    filters:
      valid_user: yes
    drill_fields: [visitor_id, source, unique_visits]
    value_format: '#,##0'
      
  - measure: unique_drupal_id
    type: count_distinct
    sql: ${drupal_id}
    filters:
      valid_user: yes
    drill_fields: [drupal_id, source, unique_visits]
    value_format: '#,##0'
    
  - measure: unique_pageviews
    type: count
    filters:
      valid_pageview: yes
      
  - measure: unique_pageviews_per_unique_users
    type: number
    sql: ${unique_pageviews}::float/NULLIF(${unique_visitors},0)
    value_format: '#,##0.00'
    
  - measure: unique_visits
    type: count_distinct
    sql: ${visit_id}
    filters:
      valid_visit: yes
      
  - measure: unique_visits_per_unique_users
    type: number
    sql: ${unique_visits}::float/NULLIF(${unique_visitors},0)
    value_format: '#,##0.00'
  
  - measure: videos_watched
    type: count
    filters:
      videos: -economist_films,-'',-NULL
      source: Economist Online

  - measure: economist_film_watch
    type: count
    filters:
      videos: -NULL, economist_films
      source: Economist Online
 
  - measure: audio_listen
    type: count
    filters:
      audio: yes
      
  - measure: unique_visitors_economist
    hidden: true
    type: count_distinct
    sql: ${visitor_id}
    filters:
      valid_user: yes
      source: Economist Online,Digital App
      
  - measure: duplicated_customer_count
    type: number
    sql: ${reader_per_copy.reader_per_copy_subscribers}+${unique_visitors_economist}
      
  - measure: conversion_rate
    type: number
    sql: ${subscription_count}/NULLIF(${unique_visitors},0)
    value_format: '#0.00%'
    
  - measure: unduplicated_customer_count
    type: count_distinct
    sql: ${grouped_visitor_id}

#   sets:
#     detail:
#       - date_time_time
#       - lower
#       - source
#       - browser
#       - connection_type
#       - country
#       - region
#       - exclude_hit
#       - hit_source
#       - hitid_high
#       - hitid_low
#       - java_enabled
#       - javascript
#       - language
#       - persistent_cookie
#       - userid
#       - username
#       - visid_new
#       - visid_type
#       - visit_num
#       - visit_page_num
#       - mobile_id
#       - ref_domain
#       - story_title
#       - issue_date
#       - drupal_id
#       - visitor_id
#       - visit_id
#       - page_event
#       - post_page_event
#       - videos_time
#       - audio

