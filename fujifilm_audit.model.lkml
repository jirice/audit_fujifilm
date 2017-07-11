connection: "spend_radar_prod"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: data {
  join: rules {
    type: left_outer
    sql_on: ${data.rule_id} = ${rules.rule_id} ;;
    relationship: many_to_one

    }

    join: spend_by_supplier {
      type: left_outer
      sql_on: ${data.supplier_name} = ${spend_by_supplier.supplier_name} ;;
      relationship: many_to_one
    }

}

explore: rules {}

 explore: spend_by_supplier {}
