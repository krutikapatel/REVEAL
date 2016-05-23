- view: registration_subscription
  derived_table:
    sql: |
      select 
      a.visitor_id, min(a.subscription_rank) - min(b.registration_rank) as visits_between_registration_and_subscription
      from 
      (select visitor_id, min(rank) as subscription_rank from ${session_facts.SQL_TABLE_NAME} where subscription_new = 1 group by visitor_id) a
      INNER JOIN
      (select visitor_id, min(rank) as registration_rank from ${session_facts.SQL_TABLE_NAME} where registration = 1 group by visitor_id) b
      ON a.visitor_id=b.visitor_id
      group by a.visitor_id
    sql_trigger_value: select count(*) from ${session_facts.SQL_TABLE_NAME}
    sortkeys: [visitor_id]

  fields:

  - dimension: visitor_id
    primary_key: true
    hidden: true
    type: string
    sql: ${TABLE}.visitor_id
    
  - measure: average_visits_between_registration_and_subscription
    type: average
    sql: ${TABLE}.visits_between_registration_and_subscription