
- view: session_facts
  derived_table:
    sql: |
      select 
      visit_id,
      visitor_id, 
      max(subscription_new) as subscription_new, 
      max(subscription_renew) as subscription_renew, 
      max(registration) as registration, 
      max(event_sequence_within_session) as events_in_session_count,
      datediff(min,MIN(date_time),MAX(date_time)) as session_length,
      rank() over (partition by visitor_id order by visit_id ) as rank
      from public.hit_data_combined
      group by visit_id, visitor_id
    sql_trigger_value: select count(*) from public.hit_data_combined
    sortkeys: [visit_id]

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: visit_id
    primary_key: true
    hidden: true
    type: string
    sql: ${TABLE}.visit_id

  - dimension: visitor_id
    hidden: true
    type: string
    sql: ${TABLE}.visitor_id

  - dimension: subscription_in_session
    type: yesno
    sql: ${TABLE}.subscription=1

  - dimension: registration_in_session
    type: yesno
    sql: ${TABLE}.registration=1

  - dimension: events_in_session_count
    type: int
    sql: ${TABLE}.events_in_session_count
    
  - dimension: rank
    hidden: true
    type: int
    sql: ${TABLE}.rank
    
  - measure: total_session_length_minutes
    type: sum
    sql: ${TABLE}.session_length
    
  - measure: average_session_length_minutes
    type: average
    sql: ${TABLE}.session_length
    

  sets:
    detail:
      - visit_id
      - visitor_id
      - subscription
      - registration
      - events_in_session_count

