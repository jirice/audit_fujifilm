view: data {
  sql_table_name: sr_fujifilm.data ;;

  dimension: account_asset_category {
    type: string
    sql: ${TABLE}.account_asset_category ;;
  }

  dimension: address_line_1 {
    type: string
    sql: ${TABLE}.address_line_1 ;;
  }

  dimension: address_line_2 {
    type: string
    sql: ${TABLE}.address_line_2 ;;
  }

  dimension: buyer_name {
    type: string
    sql: ${TABLE}.buyer_name ;;
  }

  dimension: category_code {
    type: string
    sql: ${TABLE}.category_code ;;
  }

  dimension: category_level_1 {
    type: string
    sql: ${TABLE}.category_level_1 ;;
  }

  dimension: category_level_2 {
    type: string
    sql: ${TABLE}.category_level_2 ;;
  }

  dimension: category_level_3 {
    type: string
    sql: ${TABLE}.category_level_3 ;;
  }

  dimension: category_level_4 {
    type: string
    sql: ${TABLE}.category_level_4 ;;
  }

  dimension: category_level_5 {
    type: string
    sql: ${TABLE}.category_level_5 ;;
  }

  dimension: category_level_6 {
    type: string
    sql: ${TABLE}.category_level_6 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: common_supplier_id {
    type: string
    sql: ${TABLE}.common_supplier_id ;;
  }

  dimension: cost_center_number {
    type: string
    sql: ${TABLE}.cost_center_number ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: credit_debit {
    type: string
    sql: ${TABLE}.credit_debit ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.currency_code ;;
  }

  dimension: data_source {
    type: string
    sql: ${TABLE}.data_source ;;
  }

  dimension_group: delivery {
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
    sql: ${TABLE}.delivery_date ;;
  }

  dimension: doc_type {
    type: string
    sql: ${TABLE}.doc_type ;;
  }

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.fiscal_year ;;
  }

  dimension: gl_account {
    type: string
    sql: ${TABLE}.gl_account ;;
  }

  dimension: invoice_amount {
    type: number
    sql: ${TABLE}.invoice_amount ;;
  }

  dimension_group: invoice {
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
    sql: ${TABLE}.invoice_date ;;
  }

  dimension: invoice_line_number {
    type: string
    sql: ${TABLE}.invoice_line_number ;;
  }

  dimension: invoice_qty {
    type: string
    sql: ${TABLE}.invoice_qty ;;
  }

  dimension: invoice_uom {
    type: string
    sql: ${TABLE}.invoice_uom ;;
  }

  dimension: item_amount {
    type: string
    sql: ${TABLE}.item_amount ;;
  }

  dimension: item_description {
    type: string
    sql: ${TABLE}.item_description ;;
  }

  dimension: manufacture_ref {
    type: string
    sql: ${TABLE}.manufacture_ref ;;
  }

  dimension: material_description {
    type: string
    sql: ${TABLE}.material_description ;;
  }

  dimension: material_group {
    type: string
    sql: ${TABLE}.material_group ;;
  }

  dimension: material_group_cleansed {
    type: string
    sql: ${TABLE}.material_group_cleansed ;;
  }

  dimension: material_group_name {
    type: string
    sql: ${TABLE}.material_group_name ;;
  }

  dimension: material_group_name_cleansed {
    type: string
    sql: ${TABLE}.material_group_name_cleansed ;;
  }

  dimension: material_name {
    type: string
    sql: ${TABLE}.material_name ;;
  }

  dimension: month_filter {
    type: string
    sql: ${TABLE}.month_filter ;;
  }

  dimension: new_supplier {
    type: string
    sql: ${TABLE}.new_supplier ;;
  }

  dimension: non_spend {
    type: string
    sql: ${TABLE}.non_spend ;;
  }

  dimension: order_quantity {
    type: string
    sql: ${TABLE}.order_quantity ;;
  }

  dimension: original_spend_amount {
    type: string
    sql: ${TABLE}.original_spend_amount ;;
  }

  dimension: part_number {
    type: string
    sql: ${TABLE}.part_number ;;
  }

  dimension: payment_date {
    type: string
    sql: ${TABLE}.payment_date ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }

  dimension: plant {
    type: string
    sql: ${TABLE}.plant ;;
  }

  dimension: po_amount {
    type: number
    sql: ${TABLE}.po_amount ;;
  }

  dimension_group: po {
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
    sql: ${TABLE}.po_date ;;
  }

  dimension: po_line {
    type: string
    sql: ${TABLE}.po_line ;;
  }

  dimension: po_number {
    type: string
    sql: ${TABLE}.po_number ;;
  }

  dimension: project_number {
    type: string
    sql: ${TABLE}.project_number ;;
  }

  dimension: purchasing_group {
    type: string
    sql: ${TABLE}.purchasing_group ;;
  }

  dimension: purchasing_organization {
    type: string
    sql: ${TABLE}.purchasing_organization ;;
  }

  dimension: quarter_filter {
    type: string
    sql: ${TABLE}.quarter_filter ;;
  }

  dimension: rule_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.rule_id ;;
  }

  dimension: sap_invoice_no {
    type: string
    sql: ${TABLE}.sap_invoice_no ;;
  }

  dimension: sourcing_group_1 {
    type: string
    sql: ${TABLE}.sourcing_group_1 ;;
  }

  dimension: sourcing_group_2 {
    type: string
    sql: ${TABLE}.sourcing_group_2 ;;
  }

  dimension: sourcing_group_3 {
    type: string
    sql: ${TABLE}.sourcing_group_3 ;;
  }

  dimension: sourcing_group_4 {
    type: string
    sql: ${TABLE}.sourcing_group_4 ;;
  }

  dimension: sourcing_group_5 {
    type: string
    sql: ${TABLE}.sourcing_group_5 ;;
  }

  dimension: sourcing_group_6 {
    type: string
    sql: ${TABLE}.sourcing_group_6 ;;
  }

  dimension: spend_amount {
    type: number
    sql: ${TABLE}.spend_amount ;;
  }

  dimension: spend_file_name {
    type: string
    sql: ${TABLE}.spend_file_name ;;
  }

  dimension: spend_id {
    type: string
    sql: ${TABLE}.spend_id ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: still_to_deliver {
    type: string
    sql: ${TABLE}.still_to_deliver ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}.supplier_name ;;
  }

  dimension: supplier_name_cleansed {
    type: string
    sql: ${TABLE}.supplier_name_cleansed ;;
  }

  dimension: supplier_parent_name {
    type: string
    sql: ${TABLE}.supplier_parent_name ;;
  }

  dimension_group: transaction {
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
    sql: ${TABLE}.transaction_date ;;
  }

  dimension: vendor_catalog_ref {
    type: string
    sql: ${TABLE}.vendor_catalog_ref ;;
  }

  dimension: vendor_invoice_ref {
    type: string
    sql: ${TABLE}.vendor_invoice_ref ;;
  }

  dimension: vendor_ref {
    type: string
    sql: ${TABLE}.vendor_ref ;;
  }

  dimension: wbs_element {
    type: string
    sql: ${TABLE}.wbs_element ;;
  }

  dimension: year_filter {
    type: string
    sql: ${TABLE}.year_filter ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      buyer_name,
      supplier_parent_name,
      supplier_name,
      material_group_name,
      material_name,
      spend_file_name,
      rules.rule_id
    ]
  }
}
