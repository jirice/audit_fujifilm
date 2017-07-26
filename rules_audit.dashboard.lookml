- dashboard: Rules Audit dashboard
  layout: newspaper
  elements:
  - name: Rule Audit
    label: Rule Audit
    title: Rule Audit
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.rule_id
    - rules.priority
    - rules.firing_order
    - rules.updated_on
    - data.total_spend
    - data.line_count
    filters:
     data.rule_id: "-EMPTY"

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
    listen: {}
    row:
    col:
    width:
    height:
  - name: Rule Condition
    title: Rule Condition
    model: fujifilm_audit
    explore: data
    type: table
    fields: [rules.rule_id, rules.priority, rules.firing_order, rules.rule_condition_1,
      rules.rule_condition_2, rules.rule_condition_3, rules.rule_condition_4, rules.rule_condition_5,
      data.category_level_1, data.category_level_2, data.category_level_3, data.total_spend]
    filters:
      rules.rule_id: "-EMPTY"
    sorts: [rules.rule_id]
    limit: 5000
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
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: '#,##0,"k"', series: [{id: F, name: F},
          {id: K, name: K}, {id: P, name: P}]}]
    hidden_series: []
