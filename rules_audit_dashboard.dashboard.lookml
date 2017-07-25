- dashboard: Rules Audit Dashboard
  layout: newspaper
  elements:
  - name: Rules Audit Dashboard Upper
    title : Rules Audit Dashboard Upper
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.rule_id
    - data.total_spend
    - data.po_line_count
    - rules.firing_order
    - rules.needs_review
    - rules.priority
    - rules.rule_condition_1
    - rules.rule_condition_2
    - rules.rule_condition_3
    - rules.rule_condition_4
    - rules.rule_condition_5
    - rules.created_date
    - rules.updated_on
    sorts:
    - data.rule_id
    limit: 500
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    row:
    col:
    width:
    height:
