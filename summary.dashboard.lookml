- dashboard: summary dashboard
  layout: newspaper
  elements:
  - name: Po Count - Single Value
    label: Po Count - Single Value
    title: "#POs"
    model: fujifilm_audit
    explore: data
    type: single_value
    fields:
    - data.po_count
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    single_value_title: "#POs"
    row: 0
    col: 11
    width: 3
    height: 2
  - name: Invoice Count - Single Value
    label: Invoice Count - Single Value
    title: "#Invoices"
    model: fujifilm_audit
    explore: data
    type: single_value
    fields:
#     -data.invoice_count
    - data.sap_invoice_count
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    single_value_title: "#Invoices"
    row: 0
    col: 14
    width: 3
    height: 2
  - name: Line count - Single Value
    label: Line count - Single Value
    title: "#Lines"
    model: fujifilm_audit
    explore: data
    type: single_value
    fields:
    - data.line_count
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    single_value_title: "#Lines"
    row: 0
    col: 17
    width: 3
    height: 2
  - name: Time Frame
    title: Time Frame
    model: fujifilm_audit
    explore: data
    type: single_value
    fields: [data.Timeframe]
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    barColors: [red, blue]
    labelSize: 10pt
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
    row: 0
    col: 20
    width: 4
    height: 2

  - name: Dynamic Spend Metric
    label: Dynamic Spend Metric
    model: fujifilm_audit
    explore: data
    type: single_value
    fields:
    - data.selected_spend_metric
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    single_value_title: Filtered Spend
    value_format: "$#,##0"
    row: 0
    col: 4
    width: 4
    height: 2
  - name: Supplier Parent Count
    label: Supplier Parent Count
    title: "# of Suppliers"
    model: fujifilm_audit
    explore: data
    type: single_value
    fields:
    - data.supplier_parent_count
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    single_value_title: "# of Suppliers"
    row: 0
    col: 8
    width: 3
    height: 2
  - name: Total Spend Single Value
    label: Total Spend Single Value

    model: fujifilm_audit
    explore: data
    type: single_value
    fields:
    - data.total_spend
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    single_value_title: Unfiltered Spend
    row: 0
    col: 0
    width: 4
    height: 2
  - name: Spend by Classification
    title: Spend by Classification
    label: Spend by Classification
    model: fujifilm_audit
    explore: data
    type: looker_bar
    fields: [data.category_level_1, data.total_spend]
    sorts: [data.total_spend desc]
    limit: 500
    column_limit: 50
    label: Spend by Classification
    stacking: ''
    show_value_labels: true
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
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: '0,," M"', series: [{id: data.total_spend,
            name: Data Total Spend, __FILE: fujifilm_audit/summary.dashboard.lookml,
            __LINE_NUM: 54}], __FILE: fujifilm_audit/summary.dashboard.lookml, __LINE_NUM: 42}]

    row: 2
    col: 0
    width: 12
    height: 7
  - name: Spend by Supplier - Top 10
    title: Spend by Supplier - Top 10
    model: fujifilm_audit
    explore: data
    type: looker_bar
    fields:
    - data.total_spend
    - spend_by_supplier.supplier_parent_name
    sorts:
    - data.total_spend desc
    limit: 10
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    show_value_labels: true
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
    row: 2
    col: 12
    width: 12
    height: 7
  - name: Spend by Cost Center
    title: Spend by Cost Center
    model: fujifilm_audit
    explore: data
    type: looker_pie
    fields: [data.total_spend, data.cost_center_number]
    filters:
      data.cost_center_number: "-EMPTY"
    sorts: [total desc]
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
    colors: 'palette: Looker Classic'
    series_colors: {}
    hidden_fields: [total]

    row: 9
    col: 0
    width: 7
    height: 8
  - name: Spend by Month
    title: Spend by Month
    model: fujifilm_audit
    explore: data
    type: looker_column
    fields: [data.transaction_date_month, data.supplier_parent_count, data.total_spend]
    sorts: [data.transaction_date_month]
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
    y_axis_labels: [Supplier Parent Count, Spend]
    y_axis_orientation: [right, left]
    series_labels:
      data.supplier_parent_count: Supplier Parent Count
      data.po_spend: PO Spend
      data.total_spend: Spend
    y_axes: [{label: Spend, maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: "$#,##0,, \\M", series: [{id: data.total_spend,
            name: Spend, __FILE: fujifilm_audit/summary.dashboard.lookml, __LINE_NUM: 506}],
        __FILE: fujifilm_audit/summary.dashboard.lookml, __LINE_NUM: 494}, {label: Supplier
          Parent Count, maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: data.supplier_parent_count,
            name: Supplier Parent Count, __FILE: fujifilm_audit/summary.dashboard.lookml,
            __LINE_NUM: 524}], __FILE: fujifilm_audit/summary.dashboard.lookml, __LINE_NUM: 512}]
    series_colors:
      data.total_spend: "#27c2cc"
      data.supplier_parent_count: "#86d462"

    row: 9
    col: 15
    width: 9
    height: 8
  - name: Buyer
    title: Buyer
    model: fujifilm_audit
    explore: data
    type: looker_pie
    fields: [data.buyer_name, data.total_spend]
    sorts: [data.total_spend desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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

    row: 9
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
    row: 17
    col: 0
    width: 7
    height: 7
  - name: Spend by Country
    title: Spend by Country
    model: fujifilm_audit
    explore: data
    type: table
    fields: [data.total_spend, data.country]
    sorts: [data.total_spend desc]
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
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    row: 17
    col: 7
    width: 7
    height: 7
  filters:
  - name: Cat Lvl 2
    title: Cat Lvl 2
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category_level_2
    listens_to_filters:
    - Cat Lvl 1
  - name: Cat Lvl 1
    title: Cat Lvl 1
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category_level_1
    listens_to_filters: []
  - name: Cat Lvl 3
    title: Cat Lvl 3
    type: field_filter
    default_value:
    model: fujifilm_audit
    explore: data
    field: data.category_level_3
    listens_to_filters:
    - Cat Lvl 2
    - Cat Lvl 1
  - name: Cat Lvl 5
    title: Cat Lvl 5
    type: field_filter
    default_value:
    model: fujifilm_audit
    explore: data
    field: data.category_level_5
    listens_to_filters:
    - Cat Lvl 2
    - Cat Lvl 1
    - Cat Lvl 3
    - Cat Lvl 4
  - name: Cat Lvl 4
    title: Cat Lvl 4
    type: field_filter
    default_value:
    model: fujifilm_audit
    explore: data
    field: data.category_level_4
    listens_to_filters:
    - Cat Lvl 2
    - Cat Lvl 1
    - Cat Lvl 3
  - name: Cat Lvl 6
    title: Cat Lvl 6
    type: field_filter
    default_value:
    model: fujifilm_audit
    explore: data
    field: data.category_level_6
    listens_to_filters:
    - Cat Lvl 2
    - Cat Lvl 1
    - Cat Lvl 3
    - Cat Lvl 5
    - Cat Lvl 4
  - name: Data Source
    title: Data Source
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.data_source
    listens_to_filters: []
  - name: Transaction Date
    title: Transaction Date
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_date
    listens_to_filters: []
  - name: Transaction Calendar Year
    title: Transaction Calendar Year
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_year
    listens_to_filters: []
  - name: Transaction Calendar Quarter
    title: Transaction Calendar Quarter
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_quarter_of_year
    listens_to_filters: []
  - name: Transaction Calendar Month
    title: Transaction Calendar Month
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_month_num
    listens_to_filters: []
  - name: Transaction Fiscal Quarter
    title: Transaction Fiscal Quarter
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_fiscal_quarter_of_year
    listens_to_filters: []
  - name: Transaction Fiscal Year
    title: Transaction Fiscal Year
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_fiscal_year
    listens_to_filters: []
  - name: Transaction Fiscal Month
    title: Transaction Fiscal Month
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_fiscal_month_num
    listens_to_filters: []
  - name: Spend Type
    title: Spend Type
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.select_spend_metric
    listens_to_filters: []
  - name: Category_level_1
    title: Category_level_1
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category_level_1
    listens_to_filters: []
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category
    listens_to_filters: []
