
- dashboard: Opportunity Assessment
  layout: newspaper
  elements:
  - name:  Spend and Supplier Comparative Analysis
    label: Spend and Supplier Comparative Analysis
    title: Spend and Supplier Comparative Analysis
    model: fujifilm_audit
    explore: data
    type: looker_column
    fields:
    - spend_by_supplier.total_spend_amount_tier
    - data.total_spend
    - data.supplier_parent_count

    fill_fields:
    # - spend_by_supplier.total_spend_amount_tier
    sorts:
    - spend_by_supplier.total_spend_amount_tier
    limit: 100
    column_limit: 50
    dynamic_fields:
    - table_calculation: total_spend
      label: "% Total Spend"
      expression: "${data.total_spend}/sum(${data.total_spend})"
      value_format:
      value_format_name: percent_2
    - table_calculation: supplier_count
      label: "% Supplier Count"
      expression: "${data.supplier_parent_count}/sum(${data.supplier_parent_count})"
      value_format:
      value_format_name: percent_2
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: true
    label_density: 23
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
    show_null_points: true
    point_style: circle
    hidden_fields:
    - data.supplier_parent_count
    - data.total_spend
    series_types: {}
    label_rotation:
    label_value_format: "#.#%"
  - name: Supplier Count and PO Count  by Supplier Spend
    title: Supplier Count and PO Count  by Supplier Spend
    model: fujifilm_audit
    explore: data
    type: looker_line
    fields: [data.supplier_parent_count, data.po_count, spend_by_supplier.total_spend_amount_tier_K]
    fill_fields: [spend_by_supplier.total_spend_amount_tier_K]
    sorts: [spend_by_supplier.total_spend_amount_tier_K]
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
    show_null_points: true
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: data.supplier_parent_count,
            name: Supplier Supplier Parent Count}]}, {label: !!null '', maxValue: !!null '',
        minValue: !!null '', orientation: right, showLabels: true, showValues: true,
        tickDensity: default, tickDensityCustom: 5, type: linear, unpinAxis: false,
        valueFormat: !!null '', series: [{id: data.po_count, name: PO Po Count}]}]



  # - name: "#of Suppliers by  Spend Amount"
  #   label: "#of Suppliers by  Spend Amount"
  #   title: "#of Suppliers by Spend Amount"
  #   model: fujifilm_audit
  #   explore: data
  #   type: looker_line
  #   fields: [data.supplier_parent_count, spend_by_supplier.total_spend_amount_rounded_K]
  #   filters:
  #     spend_by_supplier.total_spend_amount_rounded_K: not -1
  #   sorts: [spend_by_supplier.total_spend_amount_rounded_K]
  #   limit: 5000
  #   column_limit: 50
  #   stacking: ''
  #   show_value_labels: false
  #   label_density: 1
  #   legend_position: center
  #   x_axis_gridlines: true
  #   y_axis_gridlines: true
  #   show_view_names: true
  #   limit_displayed_rows: false
  #   y_axis_combined: true
  #   show_y_axis_labels: true
  #   show_y_axis_ticks: true
  #   y_axis_tick_density: default
  #   y_axis_tick_density_custom: 5
  #   show_x_axis_label: true
  #   show_x_axis_ticks: true
  #   x_axis_scale: ordinal
  #   y_axis_scale_mode: linear
  #   show_null_points: true
  #   point_style: none
  #   interpolation: linear
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   ordering: none
  #   show_null_labels: false
  #   show_row_numbers: true
  #   truncate_column_names: false
  #   hide_totals: false
  #   hide_row_totals: false
  #   table_theme: editable
  #   enable_conditional_formatting: false
  #   conditional_formatting_ignored_fields: []
  #   conditional_formatting_include_totals: false
  #   conditional_formatting_include_nulls: false
  #   series_types: {}
  #   hidden_series: []
  #   y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
  #       showLabels: true, showValues: true, tickDensity: custom, tickDensityCustom: 8,
  #       type: linear, unpinAxis: false, valueFormat: '', series: [{id: data.supplier_parent_count,
  #           name: Supplier Supplier Parent Count}]}]
  #   hidden_fields: []
  #   x_axis_reversed: false
  #   y_axis_reversed: false
  #   swap_axes: false
  #   focus_on_hover: true

  #   row: 7
  #   col: 0
  #   width: 12
  #   height: 7

  - name: 80/20 Suppliers
    label: 80/20 Suppliers
    title: 80/20 Suppliers
    model: fujifilm_audit
    explore: data
    type: table
    fields: [spend_by_supplier.supplier_parent_name, data.total_spend, data.total_spend_running_total,
      data.total_spend_unfiltered]
    sorts: [data.total_spend desc]
    limit: 2000
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: cumulative_spend
      label: " % Cumulative Spend"
      expression: "${data.total_spend_running_total}/${data.total_spend:total}"
      value_format:
      value_format_name: percent_2
    label: 80/20 Suppliers
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields: [data.total_spend, data.total_spend_running_total]
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
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_null_points: true
    point_style: circle
    interpolation: linear
    hidden_fields: [data.total_spend_unfiltered]
    swap_axes: false
    series_types: {}
    series_labels:
      data.total_spend_running_total: Total Spend Running Total
      data.total_spend: Spend
      spend_by_supplier.supplier_parent: Supplier
    conditional_formatting: [{type: less than, value: '0.8', background_color: "#33ae55",
        font_color: !!null '', palette: {name: Red to Yellow to Green, colors: ["#F36254",
            "#FCF758", "#4FBC89"], __FILE: fujifilm_audit/opportunity_assessment.dashboard.lookml,
          _LINE_NUM: 265, __LINE_NUM: 291}, bold: false, italic: false, strikethrough: false,
        _FILE: fujifilm_audit/Opportunity_Assessment.dashboard.lookml, __LINE_NUM: 290,
        __FILE: fujifilm_audit/opportunity_assessment.dashboard.lookml}]

  filters:
  - name: Cat Lvl 5
    title: Cat Lvl 5
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category_level_5
    listens_to_filters:
    - Cat Lvl 1
    - Cat Lvl 2
    - Cat Lvl 3
    - Cat Lvl 4
  - name: Cat Lvl 4
    title: Cat Lvl 4
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category_level_4
    listens_to_filters:
    - Cat Lvl 1
    - Cat Lvl 2
    - Cat Lvl 3
  - name: Cat Lvl 6
    title: Cat Lvl 6
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category_level_6
    listens_to_filters:
    - Cat Lvl 1
    - Cat Lvl 2
    - Cat Lvl 3
    - Cat Lvl 4
    - Cat Lvl 5
  - name: Cat Lvl 3
    title: Cat Lvl 3
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category_level_3
    listens_to_filters:
    - Cat Lvl 1
    - Cat Lvl 2
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
