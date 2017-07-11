- dashboard: Supplier Data By Category
  layout: newspaper
  elements:
  - name: Supplier by Category Level 1
    label: Supplier by Category Level 1
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.supplier_parent_count
    - data.category_level_1
    - data.po_count
    - data.total_spend
    filters:
      data.category_level_1: "-EMPTY"
    sorts:
    - data.supplier_parent_count desc
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - data.total_spend
    - data.po_count
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
    conditional_formatting:
    - type: high to low
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: fujifilm_audit/supplier_data_by_category.dashboard.lookml
        __LINE_NUM: 61
      bold: false
      italic: false
      strikethrough: false
      __FILE: fujifilm_audit/supplier_data_by_category.dashboard.lookml
      __LINE_NUM: 56
    listen: {}
    row: 0
    col: 0
    width: 10
    height: 7
  - name: Supplier by Category Level 2
    label: Supplier by Category Level 2
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.category_level_1
    - data.category_level_2
    - data.supplier_parent_count
    - data.po_count
    - data.total_spend
    sorts:
    - data.supplier_parent_count desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: hasvalue
      label: HasValue
      expression: |
        (NOT is_null(${data.category_level_2}))
        AND
        ${data.category_level_2} != ""
      value_format:
      value_format_name:
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - data.total_spend
    - data.po_count
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
    conditional_formatting:
    - type: high to low
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: fujifilm_audit/supplier_data_by_category.dashboard.lookml
        __LINE_NUM: 138
      bold: false
      italic: false
      strikethrough: false
      __FILE: fujifilm_audit/supplier_data_by_category.dashboard.lookml
      __LINE_NUM: 133
    hidden_points_if_no:
    - hasvalue
    hidden_fields:
    - calculation_1
    - hasvalue
    listen: {}
    row: 0
    col: 10
    width: 10
    height: 7
  - name: Supplier by Category Level 3
    label: Supplier by Category Level 3
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.supplier_parent_count
    - data.category_level_2
    - data.category_level_3
    - data.po_count
    - data.total_spend
    sorts:
    - data.supplier_parent_count desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: hasvalue
      label: HasValue
      expression: |
        (NOT is_null(${data.category_level_3}))
        AND
        ${data.category_level_3} != ""
      value_format:
      value_format_name:
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - data.total_spend
    - data.po_count
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
    conditional_formatting:
    - type: high to low
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: fujifilm_audit/supplier_data_by_category.dashboard.lookml
        __LINE_NUM: 220
      bold: false
      italic: false
      strikethrough: false
      __FILE: fujifilm_audit/supplier_data_by_category.dashboard.lookml
      __LINE_NUM: 215
    hidden_fields:
    - hasvalue
    hidden_points_if_no:
    - hasvalue
    listen: {}
    row: 7
    col: 0
    width: 10
    height: 7
  filters:
  - name: Cat Lvl 1
    title: Cat Lvl 1
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category_level_1
    listens_to_filters: []
    allow_multiple_values: true
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
    allow_multiple_values: true
  - name: Cat Lvl 2
    title: Cat Lvl 2
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category_level_2
    listens_to_filters:
    - Cat Lvl 1
    allow_multiple_values: true
