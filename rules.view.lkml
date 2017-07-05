view: rules {
  sql_table_name: sr_fujifilm.rules ;;

  dimension: rule_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.rule_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.created_on ;;
  }

  dimension: creator {
    type: string
    sql: ${TABLE}.creator ;;
  }

  dimension: firing_order {
    type: string
    sql: ${TABLE}.firing_order ;;
  }

  dimension: needs_review {
    type: string
    sql: ${TABLE}.needs_review ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension: rule_condition_1 {
    type: string
    sql: ${TABLE}.rule_condition_1 ;;
  }

  dimension: rule_condition_2 {
    type: string
    sql: ${TABLE}.rule_condition_2 ;;
  }

  dimension: rule_condition_3 {
    type: string
    sql: ${TABLE}.rule_condition_3 ;;
  }

  dimension: rule_condition_4 {
    type: string
    sql: ${TABLE}.rule_condition_4 ;;
  }

  dimension: rule_condition_5 {
    type: string
    sql: ${TABLE}.rule_condition_5 ;;
  }

  dimension: updated_by {
    type: string
    sql: ${TABLE}.updated_by ;;
  }

  dimension: updated_on {
    type: string
    sql: ${TABLE}.updated_on ;;
  }

  measure: count {
    type: count
    drill_fields: [rule_id, data.count]
  }
}
