view: data {
  sql_table_name: sr_fujifilm.data ;;


  dimension: classification {
    view_label: "Taxonomies"

    label: " Classification"
    type: string
    sql:case
        when ${TABLE}."category_level_3" is not null then ${TABLE}."category_level_3"
        when ${TABLE}."category_level_3" is null and ${TABLE}."category_level_2" is not null then ${TABLE}."category_level_2"
        when ${TABLE}."category_level_3" is null and ${TABLE}."category_level_2" is null and ${TABLE}."category_level_1" is not null then ${TABLE}."category_level_1"
        else null
        end;;

    drill_fields: [sourcing_group_1,sourcing_group_2,sourcing_group_3]
  }

measure:lead_date
{
  type: average
  sql: ${delivery_date}-${po_date_date} ;;
}
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
    view_label: "Taxonomies"
    type: string
    sql: ${TABLE}.category_level_1 ;;
    drill_fields: [category_level_2]

  }


  dimension: category_level_2 {
    view_label: "Taxonomies"
    type: string
    sql: ${TABLE}.category_level_2 ;;
    drill_fields: [category_level_3]
  }

  dimension: category_level_3 {
    view_label: "Taxonomies"
    type: string
    sql: ${TABLE}.category_level_3 ;;
    drill_fields: [category_level_4]
  }

  dimension: category_level_4 {
    view_label: "Taxonomies"
    type: string
    sql: ${TABLE}.category_level_4 ;;
  }

  dimension: category_level_5 {
    view_label: "Taxonomies"
    type: string
    sql: ${TABLE}.category_level_5 ;;
  }

  dimension: category_level_6 {
    view_label: "Taxonomies"
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

  measure: sap_invoice_count {
    view_label: "Invoice"
    type: count_distinct
    # sql: ${invoice_line_number} ;;
    sql: ${sap_invoice_no} ;;
    value_format_name: decimal_0
    filters: {
      field: non_spend
      value: "-Y"
    }
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
    drill_fields: [supplier_name]
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


  measure: Timeframe {
    type: string
    sql:  CONCAT((CONCAT(TO_CHAR(min(${transaction_date_date}), 'Mon-YY'),' to ')),TO_CHAR(max(${transaction_date_date}), 'Mon-YY')) ;;

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



    dimension: account_description {
      view_label: "Account"
      type: string
      sql: ${TABLE}."account_description" ;;
    }

    dimension: account_description_long {
      view_label: "Account"
      type: string
      view_label: "Account"
      sql: ${TABLE}."account_description_long" ;;
    }

    dimension: account_group_description {
      view_label: "Account"
      type: string
      view_label: "Account"
      sql: ${TABLE}."account_group_description" ;;
    }

    dimension: account_id {
      view_label: "Account"
      type: string
      view_label: "Account"
      sql: ${TABLE}."account_id" ;;
    }

    dimension: account_type_description {
      view_label: "Account"
      type: string
      view_label: "Account"
      sql: ${TABLE}."account_type_description" ;;
    }

    dimension: accounting_date {
      #dimension_group: accounting_date {
      view_label: "Dates"
      label: "Accounting"
      #type: time
      #datatype: date
      #timeframes: [date,
      #  month,
      #  month_num, fiscal_month_num,
      #  quarter, fiscal_quarter,
      #  quarter_of_year, fiscal_quarter_of_year,
      #  year, fiscal_year]
      #sql: ${TABLE}.accounting_date ;;
      type: string
      sql: ${TABLE}.accounting_date_str ;;
    }

    dimension: activity {
      type: string
      sql: ${TABLE}.activity ;;
      drill_fields: [supplier_name_cleansed, category]
    }

    dimension: address_1 {
      view_label: "Address"
      type: string
      sql: ${TABLE}."address_1" ;;
    }

    dimension: afe_dtn_num {
      type: string
      sql: ${TABLE}."afe_dtn_num" ;;
    }

    dimension: afe_dtn_num_description {
      type: string
      sql: ${TABLE}."afe_dtn_num_description" ;;
    }

    dimension: amount {
      type: string
      sql: ${TABLE}.amount ;;
    }

    dimension: ap_terms {
      view_label: "Invoice"
      type: string
      sql: ${TABLE}."ap_terms" ;;
    }

    dimension: approver_name {
      type: string
      sql: ${TABLE}."approver_name" ;;
    }

    dimension: business_purpose_description {
      type: string
      sql: ${TABLE}."business_purpose_description" ;;
    }

    dimension: business_unit {
      view_label: "BU/Dept"
      type: string
      sql: ${TABLE}."business_unit" ;;
    }

    dimension: buyer {
      type: string
      sql: ${TABLE}.buyer ;;
    }

#     dimension: buyer_name {
#       type: string
#       sql: ${TABLE}."buyer_name" ;;
#     }
#
#     dimension: category_code {
#       view_label: "Taxonomies"
#       type: string
#       sql: ${TABLE}."category_code" ;;
#     }

    dimension: category_description {
      view_label: "Taxonomies"
      type: string
      sql: ${TABLE}."category_description" ;;
    }

    dimension: category {
      view_label: "Taxonomies"
      type: string
      sql:  CASE
            WHEN {% condition category_level_1 %} '' {% endcondition %} THEN
              ${category_level_1}
            WHEN {% condition category_level_1 %} ${category_level_1} {% endcondition %} THEN
              CASE
                WHEN {% condition category_level_2 %} '' {% endcondition %} THEN
                  ${category_level_2}
                WHEN {% condition category_level_2 %} ${category_level_2} {% endcondition %} THEN
                  CASE
                    WHEN {% condition category_level_3 %} '' {% endcondition %} THEN
                      ${category_level_3}
                    WHEN {% condition category_level_3 %} ${category_level_3} {% endcondition %} THEN
                      CASE
                        WHEN {% condition category_level_4 %} '' {% endcondition %} THEN
                          ${category_level_4}
                        WHEN {% condition category_level_4 %} ${category_level_4} {% endcondition %} THEN
                          CASE
                            WHEN {% condition category_level_5 %} '' {% endcondition %} THEN
                              ${category_level_5}
                            WHEN {% condition category_level_5 %} ${category_level_5} {% endcondition %} THEN
                              ${category_level_6}
                            ELSE NULL
                          END
                      END
                  END
              END
          END;;
    }
#
#     dimension: category_level_1 {
#       view_label: "Taxonomies"
#       type: string
#       sql: ${TABLE}."category_level_1" ;;
#       drill_fields: [category_level_2]
#       link: {
#         label: "Link to Category Explore"
#         url: "/explore/BluthIndustries/data?qid=49g8lfIONvBW9INerjF7IS&f[data.category_level_1] = {{ value }}"
#       }
#       link: {
#         label: "Cool Dashboard"
#         url: "google.com"
#       }
#     }
#
#     dimension: category_level_2 {
#       view_label: "Taxonomies"
#       type: string
#       drill_fields: [category_level_3]
#       sql: ${TABLE}."category_level_2" ;;
#     }
#
#     dimension: category_level_3 {
#       view_label: "Taxonomies"
#       type: string
#       drill_fields: [category_level_4]
#       sql: ${TABLE}."category_level_3" ;;
#     }
#
#     dimension: category_level_4 {
#       view_label: "Taxonomies"
#       type: string
#       drill_fields: [category_level_5]
#       sql: ${TABLE}."category_level_4" ;;
#     }
#
#     dimension: category_level_5 {
#       view_label: "Taxonomies"
#       type: string
#       drill_fields: [category_level_6]
#       sql: ${TABLE}."category_level_5" ;;
#     }
#
#     dimension: category_level_6 {
#       view_label: "Taxonomies"
#       type: string
#       sql: ${TABLE}."category_level_6" ;;
#     }
#
#     dimension: city {
#       view_label: "Address"
#       type: string
#       sql: ${TABLE}.city ;;
#     }
#
    # dimension: classification {
    #   view_label: "Taxonomies"
    #   type: string
    #   sql: ${TABLE}.classification ;;
    #   drill_fields: [sourcing_group_1,sourcing_group_2,sourcing_group_3]
    # }

    dimension: commodity_code {
      view_label: "Taxonomies"
      type: string
      sql: ${TABLE}."commodity_code" ;;
    }

    dimension: company {
      type: string
      sql: ${TABLE}.company ;;
    }

    dimension: company_code {
      type: string
      sql: ${TABLE}."company_code" ;;
    }

    dimension: compliant_raw {
      hidden: yes
      type: string
      sql: ${TABLE}.compliant ;;
    }

    dimension: contract {
      type: string
      sql: ${TABLE}.contract ;;
    }

    dimension: cost_center {
      view_label: "Account"
      type: string
      sql: ${TABLE}."cost_center" ;;
    }

    dimension: cost_center_description {
      view_label: "Account"
      type: string
      sql: ${TABLE}."cost_center_description" ;;
    }

#     dimension: country {
#       view_label: "Address"
#       type: string
#       sql: ${TABLE}.country ;;
#     }

    dimension: country_cleansed {
      view_label: "Address"
      type: string
      sql: ${TABLE}."country_cleansed" ;;
    }

#     dimension: data_source {
#       type: string
#       sql: ${TABLE}."data_source" ;;
#     }
#
    dimension: department_code {
      view_label: "BU/Dept"
      type: string
      sql: ${TABLE}."department_code" ;;
    }

    dimension: department_description {
      view_label: "BU/Dept"
      type: string
      sql: ${TABLE}."department_description" ;;
    }

    dimension: department_group_campus {
      view_label: "BU/Dept"
      type: string
      sql: ${TABLE}."department_group_campus" ;;
    }

    dimension: department_group_description {
      view_label: "BU/Dept"
      type: string
      sql: ${TABLE}."department_group_description" ;;
    }

    dimension: department_group_vp_area {
      view_label: "BU/Dept"
      type: string
      sql: ${TABLE}."department_group_vp_area" ;;
    }

    dimension: department_name {
      view_label: "BU/Dept"
      type: string
      sql: ${TABLE}."department_name" ;;
    }

    dimension: deptid {
      view_label: "BU/Dept"
      type: string
      sql: ${TABLE}.deptid ;;
    }

    dimension: descr254_mixed {
      type: string
      sql: ${TABLE}.descr254_mixed ;;
    }

    dimension: description {
      type: string
      sql: ${TABLE}.description ;;
    }

    dimension: distrib_line_number {
      type: string
      sql: ${TABLE}."distrib_line_number" ;;
    }

    dimension: distribution_line_qty {
      type: string
      sql: ${TABLE}."distribution_line_qty" ;;
    }

    dimension: district {
      type: string
      sql: ${TABLE}.district ;;
    }

    dimension_group: due_date {
      view_label: "Dates"
      label: "Due"
      type: time
      datatype: date
      timeframes: [date,
        month,
        month_num, fiscal_month_num,
        quarter, fiscal_quarter,
        quarter_of_year, fiscal_quarter_of_year,
        year, fiscal_year]
      #sql: ${TABLE}.due_dt ;;
      sql: ${TABLE}.due_date ;;
    }

    dimension: emplid {
      type: string
      sql: ${TABLE}.emplid ;;
    }

    dimension: expense_subaccount {
      view_label: "Account"
      type: string
      sql: ${TABLE}."expense_subaccount" ;;
    }

    dimension: expense_type {
      type: string
      sql: ${TABLE}."expense_type" ;;
    }

    dimension: freight_amount {
      type: string
      sql: ${TABLE}."freight_amount" ;;
    }

    dimension: fund {
      view_label: "Account"
      type: string
      sql: ${TABLE}.fund ;;
    }

    dimension: fund_description {
      view_label: "Account"
      type: string
      sql: ${TABLE}."fund_description" ;;
    }

    dimension: fund_group_description {
      view_label: "Account"
      type: string
      sql: ${TABLE}."fund_group_description" ;;
    }

#     dimension: gl_account {
#       view_label: "Account"
#       type: string
#       sql: ${TABLE}."gl_account" ;;
#     }

    dimension: gl_account_description {
      view_label: "Account"
      type: string
      sql: ${TABLE}."gl_account_description" ;;
    }

#     dimension: invoice_date {
#       #dimension_group: invoice_date {
#       view_label: "Dates"
#       label: "Invoice"
#       #type: time
#       #datatype: date
#       #timeframes: [date,
#       #  month,
#       #  month_num, fiscal_month_num,
#       #  quarter, fiscal_quarter,
#       #  quarter_of_year, fiscal_quarter_of_year,
#       #  year, fiscal_year]
#       #sql: ${TABLE}.invoice_date ;;
#       type: string
#       sql: ${TABLE}.invoice_date_str ;;
#     }
#
    dimension: invoice_description {
      view_label: "Invoice"
      type: string
      sql: ${TABLE}."invoice_description" ;;
    }

    dimension: invoice_id {
      view_label: "Invoice"
      type: string
      sql: ${TABLE}."invoice_id" ;;
    }

    # dimension: invoice_line_number {
    #   view_label: "Invoice"
    #   type: string
    #   sql: ${TABLE}."invoice_line_number" ;;
    # }

    # dimension: invoice_line_number {
    #   view_label: "Invoice"
    #   type: string
    #   sql: ${TABLE}."invoice_line_number" ;;
    # }

#     dimension: item_description {
#       type: string
#       sql: ${TABLE}."item_description" ;;
#     }
#
    dimension: item_number {
      type: string
      sql: ${TABLE}."item_number" ;;
    }

    dimension: itm_id_vndr {
      type: string
      sql: ${TABLE}.itm_id_vndr ;;
    }

    dimension: justification_code {
      type: string
      sql: ${TABLE}."justification_code" ;;
    }


    dimension: location_latlong {
      type: location
      sql_latitude:${TABLE}.latitude;;
      sql_longitude:${TABLE}.longitude;;
      drill_fields: [supplier_name_cleansed, category_level_1,category_level_2,category_level_3,category_level_4,category_level_5]
    }

    dimension: supplier_state {
      view_label: "Supplier"
      label: "State"
      type: string
      map_layer_name: us_states
      sql: ${TABLE}.state ;;
      map_layer_name: us_states
      drill_fields: [supplier_name_cleansed, category_level_1,category_level_2,category_level_3,category_level_4,category_level_5]
    }

    dimension: location {
      type: string
      sql: ${TABLE}.location ;;
    }

    dimension: location_description {
      type: string
      sql: ${TABLE}."location_description" ;;
    }

    dimension: mcc_code {
      view_label: "Account"
      type: string
      sql: ${TABLE}."mcc_code" ;;
    }

    dimension: mcc_description {
      view_label: "Account"
      type: string
      sql: ${TABLE}."mcc_description" ;;
    }

    dimension: merchandise_amount {
      type: string
      sql: ${TABLE}."merchandise_amount" ;;
    }

    dimension: merchant {
      view_label: "Supplier"
      type: string
      sql: ${TABLE}.merchant ;;
    }

    dimension: mfg_id {
      type: string
      sql: ${TABLE}."mfg_id" ;;
    }

    dimension: mfg_itm_id {
      type: string
      sql: ${TABLE}."mfg_itm_id" ;;
    }

    dimension: misc_amount {
      type: string
      sql: ${TABLE}."misc_amount" ;;
    }

    dimension: monetary_amount {
      type: number
      sql: ${TABLE}."monetary_amount" ;;
    }

    dimension: name {
      type: string
      sql: ${TABLE}.name ;;
    }

#     dimension: new_supplier {
#       view_label: "Supplier"
#       type: string
#       sql: ${TABLE}."new_supplier" ;;
#     }
#
    dimension: origin {
      type: string
      sql: ${TABLE}.origin ;;
    }

    # dimension: original_spend_amount {
    #   type: number
    #   sql: ${TABLE}."original_spend_amount" ;;
    # }

    # dimension: payment_date {
    #   #dimension_group: payment_date {
    #   view_label: "Dates"
    #   label: "Payment"
    #   #type: time
    #   #datatype: date
    #   #timeframes: [date,
    #   #  month,
    #   #  month_num, fiscal_month_num,
    #   #  quarter, fiscal_quarter,
    #   #  quarter_of_year, fiscal_quarter_of_year,
    #   #  year, fiscal_year]
    #   #sql: ${TABLE}.payment_date ;;
    #   type: string
    #   sql: ${TABLE}.payment_date_str ;;
    # }

    dimension: payment_description {
      view_label: "Invoice"
      type: string
      sql: ${TABLE}."payment_description" ;;
    }

    dimension: payment_id_ref {
      view_label: "Invoice"
      type: string
      sql: ${TABLE}."payment_id_ref" ;;
    }
#
#     dimension: payment_method {
#       view_label: "Invoice"
#       type: string
#       sql: ${TABLE}."payment_method" ;;
#     }
#
    dimension: pc_bus_unit {
      view_label: "BU/Dept"
      type: string
      sql: ${TABLE}."pc_bus_unit" ;;
    }

    dimension: po_account_description {
      view_label: "Account"
      label: "PO Account Description"
      type: string
      sql: ${TABLE}."po_account_description" ;;
    }

    dimension_group: po_date {
      view_label: "Dates"
      label: "PO"
      type: time
      datatype: date
      timeframes: [date,
        month,
        month_num, fiscal_month_num,
        quarter, fiscal_quarter,
        quarter_of_year, fiscal_quarter_of_year,
        year, fiscal_year]
      sql: ${TABLE}.po_date ;;
    }

    dimension: po_description {
      view_label: "PO"
      label: "PO Description"
      type: string
      sql: ${TABLE}."po_description" ;;
    }

    dimension: po_item_description {
      view_label: "PO"
      label: "PO Item Description"
      type: string
      sql: ${TABLE}."po_item_description" ;;
    }

    # dimension: po_line {
    #   view_label: "PO"
    #   label: "PO Line"
    #   type: string
    #   sql: ${TABLE}."po_line" ;;
    # }

    dimension: po_line_description {
      view_label: "PO"
      label: "PO Line Description"
      type: string
      sql: ${TABLE}."po_line_description" ;;
    }

    # dimension: po_number {
    #   view_label: "PO"
    #   label: "PO Number"
    #   type: string
    #   sql: ${TABLE}."po_number" ;;
    # }

    dimension: po_status {
      view_label: "PO"
      label: "PO Status"
      type: string
      sql: ${TABLE}."po_status" ;;
    }

    dimension: post_date {
      #dimension_group: post_date {
      view_label: "Dates"
      label: "Post"
      #type: time
      #datatype: date
      #timeframes: [date,
      #  month,
      #  month_num, fiscal_month_num,
      #  quarter, fiscal_quarter,
      #  quarter_of_year, fiscal_quarter_of_year,
      #  year, fiscal_year]
      #sql: ${TABLE}.post_date ;;
      type: string
      sql: ${TABLE}.post_date_str ;;
    }

    dimension: postal_code {
      view_label: "Address"
      type: zipcode
      sql: ${TABLE}."postal_code" ;;
    }

    dimension: price_po {
      view_label: "PO"
      label: "PO Price"
      type: string
      sql: ${TABLE}."price_po" ;;
    }

    dimension: project {
      view_label: "Account"
      type: string
      sql: ${TABLE}.project ;;
    }

    dimension: qty_vchr {
      type: string
      sql: ${TABLE}.qty_vchr ;;
    }

    dimension: quantity {
      type: string
      sql: ${TABLE}.quantity ;;
    }

    dimension: quantity_invoiced {
      type: string
      sql: ${TABLE}."quantity_invoiced" ;;
    }

    dimension: reg_test {
      type: string
      sql: ${TABLE}.reg_test ;;
    }

    dimension: roll_stat_r {
      type: string
      sql: ${TABLE}."roll_stat_r" ;;
    }

    # dimension: rule_id {
    #   type: string
    #   sql: ${TABLE}.rule_id ;;
    # }
#
#     dimension: source {
#       type: string
#       sql: ${TABLE}.source ;;
#     }

#     dimension: sourcing_group_1 {
#       view_label: "Taxonomies"
#       type: string
#       sql: ${TABLE}."sourcing_group_1" ;;
#     }
#
#     dimension: sourcing_group_2 {
#       view_label: "Taxonomies"
#       type: string
#       sql: ${TABLE}."sourcing_group_2" ;;
#     }
#
#     dimension: sourcing_group_3 {
#       view_label: "Taxonomies"
#       type: string
#       sql: ${TABLE}."sourcing_group_3" ;;
#     }
#
#     dimension: sourcing_group_4 {
#       view_label: "Taxonomies"
#       type: string
#       sql: ${TABLE}."sourcing_group_4" ;;
#     }
#
#     dimension: sourcing_group_5 {
#       view_label: "Taxonomies"
#       type: string
#       sql: ${TABLE}."sourcing_group_5" ;;
#     }
#
#     dimension: sourcing_group_6 {
#       view_label: "Taxonomies"
#       type: string
#       sql: ${TABLE}."sourcing_group_6" ;;
#     }
#
#     dimension: spend_amount {
#       type: number
#       sql: ${TABLE}.spend_amount ;;
#     }
#
#
#     dimension: spend_file_name {
#       type: string
#       sql: ${TABLE}."spend_file_name" ;;
#     }
#
#     dimension: spend_id {
#       type: string
#       sql: ${TABLE}.spend_id ;;
#     }

    dimension: spend_type {
      type: string
      sql: ${TABLE}."spend_type" ;;
    }
#
#     dimension: state {
#       view_label: "Address"
#       type: string
#       sql: ${TABLE}.state ;;
#     }

    dimension: supplier_class {
      view_label: "Supplier"
      type: string
      sql: ${TABLE}."supplier_class" ;;
    }

#     dimension: supplier_name {
#       view_label: "Supplier"
#       type: string
#       sql: ${TABLE}."supplier_name" ;;
#     }
#
    dimension: supplier {
      view_label: "Supplier"
      type: string
      sql:  CASE
            WHEN {% condition supplier_parent_name %} '' {% endcondition %}
              THEN ${supplier_parent_name}
            WHEN {% condition supplier_parent_name %} ${supplier_parent_name} {% endcondition %}
              THEN ${supplier_name}
          END;;
    }

#
#     dimension: supplier_name_cleansed {
#       view_label: "Supplier"
#       type: string
#       sql: ${TABLE}."supplier_name_cleansed" ;;
#       drill_fields: [supplier_name_cleansed,sourcing_group_1,sourcing_group_2,sourcing_group_3,category, activity]
#     }
#
    dimension: supplier_number {
      view_label: "Supplier"
      type: string
      sql: ${TABLE}."supplier_number" ;;
    }

#     dimension: supplier_parent_name {
#       view_label: "Supplier"
#       type: string
#       sql: ${TABLE}."supplier_parent_name" ;;
#       drill_fields: [category, activity,sourcing_group_1,sourcing_group_2,sourcing_group_3]
#     }

    dimension: supplier_site {
      view_label: "Supplier"
      type: string
      sql: ${TABLE}."supplier_site" ;;
    }

    dimension: supplier_terms {
      view_label: "Supplier"
      type: string
      sql: ${TABLE}."supplier_terms" ;;
    }



    dimension_group: transaction_date {
      view_label: "Dates"
      label: "Transaction"
      type: time
      datatype: date
      timeframes: [date,
        month,
        month_num, fiscal_month_num,
        quarter, fiscal_quarter,
        quarter_of_year, fiscal_quarter_of_year,
        year, fiscal_year]
      sql: ${TABLE}.transaction_date ;;
      drill_fields: [transaction_date_month]
    }

    dimension: transaction_reference_number {
      view_label: "PO"
      type: string
      sql: ${TABLE}."transaction_reference_number" ;;
    }

    dimension: transaction_type {
      view_label: "PO"
      type: string
      sql: ${TABLE}."transaction_type" ;;
    }

    dimension: unit_of_measure {
      type: string
      sql: ${TABLE}."unit_of_measure" ;;
    }

    dimension: unit_price {
      type: string
      sql: ${TABLE}.unit_price ;;
    }

    dimension: ut_category_code {
      type: string
      sql: ${TABLE}."ut_category_code" ;;
    }

    dimension: vendor_id {
      view_label: "Supplier"
      type: string
      sql: ${TABLE}."vendor_id" ;;
    }

    dimension: vendor_item_id {
      type: string
      sql: ${TABLE}."vendor_item_id" ;;
    }

    dimension: vendor_name {
      view_label: "Supplier"
      type: string
      sql: ${TABLE}.vendor_name ;;
    }

    dimension: vendor_number {
      view_label: "Supplier"
      type: string
      sql: ${TABLE}."vendor_number" ;;
    }

    dimension: voucher_id {
      view_label: "Invoice"
      type: string
      sql: ${TABLE}."voucher_id" ;;
    }

    dimension: voucher_line_description {
      view_label: "Invoice"
      type: string
      sql: ${TABLE}."voucher_line_description" ;;
    }

    dimension: voucher_line_number {
      view_label: "Invoice"
      type: string
      sql: ${TABLE}."voucher_line_number" ;;
    }

    dimension: voucher_type_description {
      view_label: "Invoice"
      type: string
      sql: ${TABLE}."voucher_type_description" ;;
    }

    measure: total_spend {
      type: sum
      sql: ${spend_amount} ;;
      value_format_name: usd_0
    }




    filter: select_one_metric {
      hidden: yes
      type: string
      suggestions: ["Supplier Count", "Invoice Line Count", "Invoice Count", "Invoice Spend","PO Line Count", "PO Count", "PO Spend", "Spend"]
      default_value: "PO Spend"
    }

    measure: selected_metric {
      hidden: yes
      type: number
      sql: CASE
          WHEN {% parameter select_one_metric %} = 'Supplier Count' THEN ${supplier_count}
          WHEN {% parameter select_one_metric %} = 'Invoice Line Count' THEN ${invoice_line_count}
          WHEN {% parameter select_one_metric %} = 'Invoice Count' THEN ${invoice_count}
          WHEN {% parameter select_one_metric %} = 'Invoice Spend' THEN ${invoice_spend}
          WHEN {% parameter select_one_metric %} = 'PO Line Count' THEN ${po_line_count}
          WHEN {% parameter select_one_metric %} = 'PO Count' THEN ${po_count}
          WHEN {% parameter select_one_metric %} = 'PO Spend' THEN ${po_spend}
          WHEN {% parameter select_one_metric %} = 'Spend' THEN ${total_spend}
          ELSE ${po_spend}
        END;;
    }


    filter: select_one_dimension {
      hidden: yes
      type: string
      suggestions: ["Year", "Quarter", "Month"
        , "Fiscal Year", "Fiscal Quarter", "Fiscal Month"

        , "AFE DTE Description"
        , "Approver"
        , "Buyer Name"
        , "Compliance"
        , "Cost Center"
        , "Data Source"
        , "Department"
        , "File Name"
        , "Location"
        , "MCC Description"]

      default_value: "Month"
    }

    dimension: selected_dimension {
      hidden: yes
      type: string
      sql: CASE
          WHEN {% parameter select_one_dimension %} = 'Year' THEN to_char(${transaction_date_date},'YYYY')
          WHEN {% parameter select_one_dimension %} = 'Quarter' THEN (to_char(${transaction_date_date},'YYYY') || CAST('-' as VARCHAR) || ${transaction_date_quarter_of_year})
          WHEN {% parameter select_one_dimension %} = 'Month' THEN to_char(${transaction_date_date},'YYYY-MM')

          WHEN {% parameter select_one_dimension %} = 'Fiscal Year' THEN (CAST('FY' AS VARCHAR) || CAST(${transaction_date_fiscal_year} AS VARCHAR))
          WHEN {% parameter select_one_dimension %} = 'Fiscal Quarter' THEN (CAST('FY' AS VARCHAR) || ${transaction_date_fiscal_year} || CAST('-' as VARCHAR) || ${transaction_date_fiscal_quarter_of_year})
          WHEN {% parameter select_one_dimension %} = 'Fiscal Month' THEN (CAST('FY' AS VARCHAR) || ${transaction_date_fiscal_year} || CAST('-' as VARCHAR) ||

            RIGHT(
              CAST('0' AS VARCHAR)
              ||
              CAST(${transaction_date_fiscal_month_num} AS VARCHAR)
              ,2
            )
          )

          WHEN {% parameter select_one_dimension %} = 'AFE DTE Description' THEN ${afe_dtn_num_description}
          WHEN {% parameter select_one_dimension %} = 'Approver' THEN ${approver_name}
          WHEN {% parameter select_one_dimension %} = 'Buyer Name' THEN ${buyer}
          WHEN {% parameter select_one_dimension %} = 'Compliance' THEN ${compliance}
          WHEN {% parameter select_one_dimension %} = 'Cost Center' THEN ${cost_center_description}
          WHEN {% parameter select_one_dimension %} = 'Data Source' THEN ${data_source}
          WHEN {% parameter select_one_dimension %} = 'Department' THEN ${department_name}
          WHEN {% parameter select_one_dimension %} = 'File Name' THEN ${spend_file_name}
          WHEN {% parameter select_one_dimension %} = 'Location' THEN ${location_description}
          WHEN {% parameter select_one_dimension %} = 'MCC Description' THEN ${mcc_description}

          ELSE to_char(${transaction_date_date},'YYYY-MM')
        END;;
    }



    measure: po_count_unfiltered {
      hidden: yes
      view_label: "PO"
      type: count_distinct
      sql: ${po_number} ;;
    }

    measure: po_count {
      type: count_distinct
      view_label: "PO"
      sql: ${po_number} ;;
      filters: {
        field: non_spend
        value: "-Y"
      }
    }

    dimension: has_po_number {
      hidden: yes
      view_label: "PO"
      type: yesno
      sql: ${po_number} != '';;
    }





    dimension: compliance {
      type: string
      sql: CASE
          WHEN ${compliant_raw} = 'Y' THEN 'Compliant'
          ELSE 'Non-Compliant'
         END ;;
    }

    dimension: pcard_indicator {
      type: number
      sql: CASE
                      WHEN ${TABLE}.transaction_type = 'PCARD' THEN 1
                      ELSE 0
                     END ;;
    }

    measure: nonElectonicOrderType  {
      type:  sum
      sql: CASE WHEN ${TABLE}.transaction_type  !=''
        THEN 1 ELSE 0 END;;
      drill_fields: [data_source]
    }

    measure: ElectronicOrderType {
      type:  sum
      sql: CASE WHEN ${TABLE}.transaction_type  =''
        THEN 1 ELSE 0 END;;
      drill_fields: [transaction_type]
    }

    measure:  pcard_spend {
      type:sum
      sql: ${pcard_indicator} ;;
      value_format_name: usd_0

    }

    measure: po_line_count_unfiltered {
      hidden: yes
      view_label: "PO"
      type: count
      filters: {
        field: has_po_number
        value: "yes"
      }
    }

    measure: po_line_count {
      type: count
      view_label: "PO"
      filters: {
        field: has_po_number
        value: "yes"
      }
      filters: {
        field: non_spend
        value: "-Y"
      }
    }


    measure: po_spend {
      type: sum
      view_label: "PO"
      sql: CASE
                        WHEN ${po_number} != '' THEN ${spend_amount}
                        ELSE 0
                       END ;;
      drill_fields: [category_level_2, category_level_3, po_spend]
      value_format_name: usd_0
    }


    dimension: unclassified_indicator {
      type: number
      view_label: "Taxonomies"
      sql: CASE
                        WHEN ${classification} = '' THEN 1
                        ELSE 0
                       END ;;
    }

    measure:  classified_count {
      view_label: "Taxonomies"
      type:  sum
      sql: ${classified_indicator} ;;
    }

    measure:  unclassified_count {
      view_label: "Taxonomies"
      type:  sum
      sql: ${unclassified_indicator} ;;
    }

    dimension: classified_indicator {
      view_label: "Taxonomies"
      type: number
      sql: CASE
                      WHEN ${classification} != '' THEN 1
                      ELSE 0
                     END ;;
    }

#
#     dimension: non_spend {
#       label: "Is non-spend"
#       type: string
#       sql: ${TABLE}."non_spend";;
#     }

    measure: line_count {
      type: count
      filters: {
        field: non_spend
        value: "-Y"
      }
    }

    measure: invoice_count_unfiltered {
      hidden: yes
      view_label: "Invoice"
      type: count_distinct
      sql: ${invoice_line_number} ;;
      value_format_name: decimal_0
    }

    measure: invoice_count {
      view_label: "Invoice"
      type: count_distinct
      sql: ${invoice_line_number} ;;
      value_format_name: decimal_0
      filters: {
        field: non_spend
        value: "-Y"
      }
   }

    dimension: has_invoice_line_number_no_po_number {
      hidden: yes
      view_label: "Invoice"
      type: yesno
      sql: ${po_number} = '' AND ${invoice_line_number} != '';;
    }

    measure: invoice_line_count_unfiltered {
      hidden: yes
      view_label: "Invoice"
      type: count
      filters: {
        field: has_invoice_line_number_no_po_number
        value: "yes"
      }
    }

    measure: invoice_line_count {
      view_label: "Invoice"
      type: count
      filters: {
        field: has_invoice_line_number_no_po_number
        value: "yes"
      }
      filters: {
        field: non_spend
        value: "-Y"
      }
    }

    measure: invoice_spend {
      view_label: "Invoice"
      type: sum
      sql: CASE
                      WHEN ${po_number} = '' AND ${sap_invoice_no} != '' THEN ${spend_amount}
                      ELSE 0
                     END ;;
      value_format_name: usd_0
    }

    measure: supplier_count_unfiltered {
      view_label: "Supplier"
      hidden: yes
      type: count_distinct
      sql: ${supplier_name_cleansed} ;;
      value_format_name: decimal_0
    }

    measure: supplier_count {
      view_label: "Supplier"
      type: count_distinct
      sql: ${supplier_name_cleansed} ;;
      value_format_name: decimal_0
      filters: {
        field: non_spend
        value: "-Y"
      }
    }

    measure: original_supplier_count_unfiltered {
      view_label: "Supplier"
      hidden: yes
      type: count_distinct
      sql: ${TABLE}."supplier_name" ;;
    }

    measure: original_supplier_count {
      view_label: "Supplier"
      type: count_distinct
      sql: ${TABLE}."supplier_name" ;;
      filters: {
        field: non_spend
        value: "-Y"
      }
    }

    measure:  supplier_parent_count_unfiltered {
      view_label: "Supplier"
      hidden: yes
      type:  count_distinct
      sql:  ${supplier_parent_name} ;;
    }

    measure:  supplier_parent_count {
      view_label: "Supplier"
      type:  count_distinct
      sql:  ${supplier_parent_name} ;;
      filters: {
        field: non_spend
        value: "-Y"
      }
    }

    measure: total_spend_this_month {
      type: sum
      sql: ${spend_amount} ;;
      filters: {
        field: transaction_date_date
        value: "this month"
      }
    }

    measure: total_spend_last_month {
      type: sum
      sql: ${spend_amount} ;;
      filters: {
        field: transaction_date_date
        value: "last month"
      }
    }

    measure: percent_spend_change_vs_last_month {
      type: number
      sql:  CASE
                            WHEN ${total_spend_last_month} is NULL THEN 0
                            ELSE (${total_spend_this_month} - ${total_spend_last_month})/${total_spend_last_month})
                          END ;;
      value_format_name: percent_2
    }



    measure: supplier_spend_measure  {
      view_label: "Supplier"
      type:  sum
      sql:  ${spend_amount};;
      value_format_name: usd_0
      drill_fields: [supplier_name]

    }

#     measure: total_spend_unfiltered {
#       label: "Total Spend - All Data"
#       type: number
#       sql: (SELECT SUM(b.spend_amount) FROM sr_fujifilm.data b) ;;
#       value_format_name: usd_0
#     }
  measure: total_spend_unfiltered {
    label: "Total Spend - All Data"
    type: sum
    sql: ${spend_amount} ;;
    value_format_name: usd_0
  }


    measure: total_spend_running_total {
      type: running_total
      sql: ${total_spend} ;;
      value_format_name: usd
    }



    measure: total_spend_by_compliance{
      type: sum
      sql: ${TABLE}.compliance_amount ;;
      value_format_name: usd_0
    }



#     measure: count {
#       hidden: yes
#       type: count
#       drill_fields: [detail*]
#     }
#
#     # ----- Sets of fields for drilling ------
#     set: detail {
#       fields: [vendor_name, approver_name, supplier_parent_name, supplier_name, name, buyer_name, department_name, spend_file_name]
#     }

    filter: select_spend_metric {
      hidden: yes
      type: string
      suggestions: ["Invoice Spend", "PO Spend", "Total Spend"]
      default_value: "Total Spend"
    }

    measure: selected_spend_metric {
      hidden: yes
      type: number
      sql: CASE
          WHEN {% parameter select_spend_metric %} = 'Invoice Spend' THEN ${invoice_spend}
          WHEN {% parameter select_spend_metric %} = 'PO Spend' THEN ${po_spend}
          WHEN {% parameter select_spend_metric %} = 'Total Spend' THEN ${total_spend}
          ELSE ${total_spend}
        END;;
      value_format_name: usd
    }

    dimension: Category_Classification_Depth {
      type: string
      sql: CASE WHEN  LEN(data."category_code") = 2  THEN 'Level 1'
             WHEN LEN(data."category_code") = 5  THEN 'Level 2'
             WHEN LEN(data."category_code") = 8  THEN 'Level 3'
             WHEN LEN(data."category_code") = 11  THEN 'Level 4'
             WHEN data."category_code" = ''  THEN 'Unclassified'
        ELSE  data."category_code"  END ;;

      }



}
