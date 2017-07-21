- dashboard: Data Breakouts
  layout: newspaper
  elements:
  - name: Data Breakouts Spend
    title: Data Breakouts Spend
    model: fujifilm_audit
    explore: data
    type: looker_column
    fields:
    - data.total_spend
    - data.transaction_date_year
    fill_fields:
    - data.transaction_date_year
    sorts:
    - data.transaction_date_year
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_labels:
      data.total_spend: Spend
    series_types: {}
    x_axis_label_rotation: -45
    x_axis_datetime_label: ''
    y_axis_value_format: "$#,##0,, \\M"
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 7
  - name: 'Data Breakouts # Suppliers'
    title: 'Data Breakouts # Suppliers'
    model: fujifilm_audit
    explore: data
    type: looker_column
    fields:
    - data.supplier_parent_count
    - data.transaction_date_year
    fill_fields:
    - data.transaction_date_year
    sorts:
    - data.transaction_date_year
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_labels:
      data.total_spend: Spend
    series_types: {}
    x_axis_label_rotation: -45
    x_axis_datetime_label: ''
    y_axis_value_format: ''
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 7
  - name: "Data Breakouts #Lines"
    label: "Data Breakouts #Lines"
    title: "Data Breakouts #Lines"
    model: fujifilm_audit
    explore: data
    type: looker_column
    fields:
    - data.line_count
    - data.transaction_date_year
    fill_fields:
    - data.transaction_date_year
    sorts:
    - data.transaction_date_year
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_labels:
      data.total_spend: Spend
    series_types: {}
    x_axis_label_rotation: -45
    x_axis_datetime_label: ''
    y_axis_value_format: ''
    listen: {}
    row: 7
    col: 0
    width: 8
    height: 7
  - name: 'Data Breakouts # Pos'
    title: 'Data Breakouts # Pos'
    model: fujifilm_audit
    explore: data
    type: looker_column
    fields:
    - data.po_count
    - data.transaction_date_year
    fill_fields:
    - data.transaction_date_year
    sorts:
    - data.transaction_date_year
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_labels:
      data.total_spend: Spend
    series_types: {}
    x_axis_label_rotation: -45
    x_axis_datetime_label: ''
    y_axis_value_format: ''
    listen: {}
    row: 7
    col: 8
    width: 8
    height: 7
  - name: 'Data Breakouts # Invoices'
    title: 'Data Breakouts # Invoices'
    model: fujifilm_audit
    explore: data
    type: looker_column
    fields:
    - data.sap_invoice_count
    - data.transaction_date_year
    fill_fields:
    - data.transaction_date_year
    sorts:
    - data.transaction_date_year
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_labels:
      data.total_spend: Spend
    series_types: {}
    x_axis_label_rotation: -45
    x_axis_datetime_label: ''
    y_axis_value_format: ''
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 7
  # - name: Data Breakouts Spend - Pcard
  #   label: Data Breakouts Spend - Pcard
  #   model: fujifilm_audit
  #   explore: data
  #   type: looker_column
  #   fields:
  #   - data.transaction_date_year
  #   - data.pcard_spend
  #   fill_fields:
  #   - data.transaction_date_year
  #   sorts:
  #   - data.transaction_date_year
  #   limit: 500
  #   column_limit: 50
  #   query_timezone: America/New_York
  #   stacking: ''
  #   show_value_labels: true
  #   label_density: 25
  #   legend_position: center
  #   x_axis_gridlines: false
  #   y_axis_gridlines: true
  #   show_view_names: true
  #   limit_displayed_rows: false
  #   y_axis_combined: true
  #   show_y_axis_labels: false
  #   show_y_axis_ticks: true
  #   y_axis_tick_density: default
  #   y_axis_tick_density_custom: 5
  #   show_x_axis_label: false
  #   show_x_axis_ticks: true
  #   x_axis_scale: ordinal
  #   y_axis_scale_mode: linear
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   series_labels:
  #     data.total_spend: Spend
  #   series_types: {}
  #   x_axis_label_rotation: -45
  #   x_axis_datetime_label: ''
  #   y_axis_value_format: "$#,##0,, \\M"
  #   listen: {}
  #   row: 0
  #   col: 16
  #   width: 8
  #   height: 7
  # - name: Data Breakouts Spend - Invoice
  #   label: CA Monthly Spend - PO
  #   model: fujifilm_audit
  #   explore: data
  #   type: looker_column
  #   fields:
  #   - data.transaction_date_year
  #   - data.invoice_spend
  #   fill_fields:
  #   - data.transaction_date_year
  #   sorts:
  #   - data.transaction_date_year
  #   limit: 500
  #   column_limit: 50
  #   query_timezone: America/New_York
  #   stacking: ''
  #   show_value_labels: true
  #   label_density: 25
  #   legend_position: center
  #   x_axis_gridlines: false
  #   y_axis_gridlines: true
  #   show_view_names: true
  #   limit_displayed_rows: false
  #   y_axis_combined: true
  #   show_y_axis_labels: false
  #   show_y_axis_ticks: true
  #   y_axis_tick_density: default
  #   y_axis_tick_density_custom: 5
  #   show_x_axis_label: false
  #   show_x_axis_ticks: true
  #   x_axis_scale: ordinal
  #   y_axis_scale_mode: linear
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   series_labels:
  #     data.total_spend: Spend
  #   series_types: {}
  #   x_axis_label_rotation: -45
  #   x_axis_datetime_label: ''
  #   y_axis_value_format: "$#,##0,, \\M"
  #   listen: {}
  #   row: 0
  #   col: 8
  #   width: 8
  #   height: 7
