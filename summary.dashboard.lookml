- dashboard: summary dashboard
  layout: newspaper
  elements:
  - name: Spend by Classification
    title: Spend by Classification

    model: fujifilm_audit
    explore: data
    type: looker_bar
    fields:
    - data.category_level_1
    - data.total_spend
    sorts:
    - data.total_spend desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
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
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: 0,," M"
      series:
      - id: data.total_spend
        name: Data Total Spend
    listen: {}
    row: 0
    col: 0
    width: 12
    height: 7
  - name: Spend by Supplier - Top 1000
    title: Spend by Supplier - Top 1000
    model: fujifilm_audit
    explore: data
    type: looker_bar
    fields:
    - data.total_spend
    - spend_by_supplier.supplier_name
    sorts:
    - data.total_spend desc
    limit: 1000
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
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
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: 0,," M"
      series:
      - id: data.total_spend
        name: Data Total Spend
    listen: {}
    row: 0
    col: 12
    width: 12
    height: 7
  - name: Spend by Cost Center
    title: Spend by Cost Center
    model: fujifilm_audit
    explore: data
    type: looker_pie
    fields:
    - data.total_spend
    - data.cost_center_number
    sorts:
    - data.cost_center_number desc
    limit: 1000
    column_limit: 50
    dynamic_fields:
    - table_calculation: total
      label: "%total"
      expression: "${data.total_spend}/sum(${data.total_spend})"
      value_format:
      value_format_name: percent_2
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    colors:
    - "#62bad4"
    - "#a9c574"
    - "#929292"
    - "#9fdee0"
    - "#1f3e5a"
    - "#90c8ae"
    - "#92818d"
    - "#c5c6a6"
    - "#ebd2dd"
    - "#cee0a0"
    - "#928fb4"
    - "#9fc190"
    series_colors:
      ? ''
      : "#cb62d4"
      D1100: "#3b4722"
      D1320: "#c890ab"
      D1410: "#81928f"
      D1505: "#b4b08f"
      D1620: "#9098c1"
      D1630: "#e5b1a0"
      D2550: "#2fd4ca"
      D2700: "#cbdcc9"
    hidden_fields:
    - total
    listen: {}
    row: 7
    col: 0
    width: 7
    height: 8
  - name: Monthly Total Spend/Supplier Counts
    title: Monthly Total Spend/Supplier Counts
    model: fujifilm_audit
    explore: data
    type: looker_column
    fields:
    - data.transaction_date_month
    - data.supplier_parent_count
    - data.total_spend
    sorts:
    - data.transaction_date_month
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      data.po_count: line
      data.supplier_parent_count: line
    x_axis_datetime_label: "%b-%y"
    x_axis_label_rotation: -45
    y_axis_labels:
    - Supplier Parent Count
    - Spend
    y_axis_orientation:
    - right
    - left
    series_labels:
      data.supplier_parent_count: Supplier Parent Count
      data.po_spend: PO Spend
      data.total_spend: Spend
    y_axes:
    - label: Spend
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: "$#,##0,, \\M"
      series:
      - id: data.total_spend
        name: Spend
        __FILE: fujifilm_audit/summary.dashboard.lookml
        __LINE_NUM: 68
      __FILE: fujifilm_audit/summary.dashboard.lookml
      __LINE_NUM: 56
    - label: Supplier Parent Count
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: data.supplier_parent_count
        name: Supplier Parent Count
        __FILE: fujifilm_audit/summary.dashboard.lookml
        __LINE_NUM: 86
      __FILE: fujifilm_audit/summary.dashboard.lookml
      __LINE_NUM: 74
    listen: {}
    row: 7
    col: 15
    width: 9
    height: 8
  - name: Average Lead Time By Supplier
    title: Average Lead Time by Supplier
    model: fujifilm_audit
    explore: data
    type: looker_bar
    fields:
    - data.lead_date
    - spend_by_supplier.supplier_parent_name
    - data.total_spend
    sorts:
    - data.total_spend desc
    limit: 10
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_series:
    - data.total_spend
    hidden_fields:
    - data.total_spend
    listen: {}
    row: 7
    col: 7
    width: 8
    height: 8
  - name: Spend by Cost Center Table
    title: Spend by Cost Center Table
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.total_spend
    - data.cost_center_number
    sorts:
    - data.cost_center_number desc
    limit: 1000
    column_limit: 50
    dynamic_fields:
    - table_calculation: total
      label: "%total"
      expression: "${data.total_spend}/sum(${data.total_spend})"
      value_format:
      value_format_name: percent_2
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
    value_labels: legend
    label_type: labPer
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
    show_null_points: true
    point_style: circle
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    colors:
    - "#62bad4"
    - "#a9c574"
    - "#929292"
    - "#9fdee0"
    - "#1f3e5a"
    - "#90c8ae"
    - "#92818d"
    - "#c5c6a6"
    - "#ebd2dd"
    - "#cee0a0"
    - "#928fb4"
    - "#9fc190"
    series_colors:
      ? ''
      : "#cb62d4"
      D1100: "#3b4722"
      D1320: "#c890ab"
      D1410: "#81928f"
      D1505: "#b4b08f"
      D1620: "#9098c1"
      D1630: "#e5b1a0"
      D2550: "#2fd4ca"
      D2700: "#cbdcc9"
    hidden_fields:
    listen: {}
    row: 15
    col: 0
    width: 7
    height: 7
