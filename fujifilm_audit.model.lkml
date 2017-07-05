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
}

explore: rules {}
