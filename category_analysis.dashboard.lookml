- dashboard: Category Analysis
  layout: newspaper
  elements:
  - name: Total Spend by Category
    label: Total Spend by Category
    title: Total Spend by Category
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.category
    - data.supplier_parent_count
    - data.line_count
    - data.po_count
    - data.invoice_count
    - data.total_spend
    sorts:
    - data.total_spend d
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: percent_total_spend
      label: Percent Total Spend
      expression: "${data.total_spend}/${data.total_spend:total}"
      value_format:
      value_format_name: percent_2
    query_timezone: America/New_York
    show_view_names: false
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
    series_labels:
      data.category: Category
      data.supplier_parent_count: "# Suppliers"
      data.line_count: "# Lines"
      data.po_count: "# POs"
      data.invoice_count: "# Invoices"
      percent_total_spend: "% Spend"
      data.total_spend: Spend
    row: 6
    col: 0
    width: 12
    height: 6
  - name: Total Spend by Supplier Grouping
    label: Total Spend by Supplier Grouping
    title: Total Spend by Supplier Grouping
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.supplier
    - data.line_count
    - data.po_count
    - data.invoice_count
    - data.total_spend
    - data.invoice_spend
    sorts:
    - data.total_spend desc
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: percent_total_spend
      label: Percent Total Spend
      expression: "${data.total_spend}/${data.total_spend:total}"
      value_format:
      value_format_name: percent_2
    query_timezone: America/New_York
    show_view_names: false
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
    series_labels:
      data.supplier: Supplier
      data.total_spend: Spend
      data.supplier_parent_count: "# Suppliers"
      data.line_count: "# Lines"
      data.po_count: "# POs"
      data.invoice_count: "# Invoices"
      percent_total_spend: "% Spend"
    row: 0
    col: 12
    width: 12
    height: 6
  - name: Total Spend by Item Description
    label: Total Spend by Item Description
    title: Total Spend by Item Description
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.item_description
    - data.line_count
    - data.po_count
    - data.invoice_count
    - data.total_spend
    sorts:
    - data.total_spend desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_total_spend
      label: Percent Total Spend
      expression: "${data.total_spend}/sum(${data.total_spend})"
      value_format:
      value_format_name: percent_2
    query_timezone: America/New_York
    show_view_names: false
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
    series_labels:
      data.item_description: Item Description
      data.supplier_parent_count: "# Suppliers"
      data.line_count: "# Lines"
      data.po_count: "# POs"
      data.invoice_count: "# Invoices"
      data.total_spend: Spend
      percent_total_spend: "% Spend"
    row:
    col:
    width:
    height:
  filters:
  - name: Cat Lvl 1
    title: Cat Lvl 1
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category_level_1
    listens_to_filters: []
  - name: Cat Lvl 2
    title: Cat Lvl 2
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category_level_2
    listens_to_filters:
    - Cat Lvl 1
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
  - name: Spend Type
    title: Spend Type
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.spend_type
    listens_to_filters: []
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
  - name: Transaction Fiscal Year
    title: Transaction Fiscal Year
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_fiscal_year
    listens_to_filters: []
  - name: Transaction Fiscal Quarter
    title: Transaction Fiscal Quarter
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_fiscal_quarter_of_year
    listens_to_filters: []
  - name: Transaction Fiscal Month
    title: Transaction Fiscal Month
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_fiscal_month_num
    listens_to_filters: []
