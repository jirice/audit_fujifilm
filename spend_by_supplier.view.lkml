view: spend_by_supplier {
  label: "Spend by Supplier"
  derived_table: {
    sql: SELECT
         supplier_name
        , supplier_parent_name
        ,sum(spend_amount) AS total_spend_amount
      FROM sr_fujifilm.data
      WHERE {% condition transaction_date %}sr_fujifilm.data.transaction_date {% endcondition %}
      GROUP BY 1,2
       ;;
  }

  filter: transaction_date {
    type: date
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}.supplier_name ;;
  }

  dimension: supplier_parent_name {
    type: string
    sql: ${TABLE}.supplier_parent_name ;;
    drill_fields: [supplier_name]
  }

  dimension: total_spend_amount {
    label: "Supplier Spend Amount"
    type: number
    sql: ${TABLE}.total_spend_amount ;;
  }

  dimension: total_spend_amount_rounded_K {
    label: "Supplier Spend Amount (K)"
    type: number
    sql: round(${TABLE}.total_spend_amount/1000) ;;
    value_format_name: usd_0
  }

  dimension: total_spend_amount_tier_K {
    label: "Supplier Spend Amount Tiers (K)"
    type: tier
    tiers: [1,2,3,4,5,6,7,8,9,10,15,20,50,100,200,500,1000,2000]
#     style: classic
#     style: interval
    style: integer
#     style: relational
    sql: ${total_spend_amount_rounded_K} ;;

  }

  dimension: total_spend_amount_tier {
    label: "Supplier Spend Amount Tiers"
    type: tier
    tiers: [1000, 10000, 100000, 1000000]
    style: integer
    sql: ${total_spend_amount} ;;
  }

  set: detail {
    fields: [supplier_name, total_spend_amount]
  }
}
