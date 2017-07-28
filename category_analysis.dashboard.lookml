- dashboard: Category Analysis
  layout: newspaper
  elements:
  - name: Total Spend by Category
    label: Total Spend by Category
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.category_level_1
    - data.supplier_parent_count
    - data.line_count
    - data.po_count
    - data.sap_invoice_count
    - data.spend_AP
    - data.total_spend
    sorts:
    - data.total_spend
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
      data.sap_invoice_count: "# Invoices"
      percent_total_spend: "% Spend"
      data.spend_AP: Spend-AP
      data.total_spend: Spend
    listen: {}
    row:
    col:
    width:
    height:
  - name: Total Spend by Supplier Grouping
    label: Total Spend by Supplier Grouping
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.supplier_parent_name
    - data.line_count
    - data.po_count
    - data.sap_invoice_count
    - data.spend_AP
    - data.total_spend
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
      data.sap_invoice_count: "# Invoices"
      percent_total_spend: "% Spend"
    listen:
      supplier parent name: data.supplier_parent_name
    row:
    col:
    width:
    height:
  - name: Spend by Supplier Name
    label: Spend by Supplier Name
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.supplier
    - data.supplier_name
    - data.total_spend
    sorts:
    - data.total_spend desc
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
    hidden_fields:
    - data.supplier
    series_labels:
    data.spend_AP: Spend-AP
    listen: {}
    row:
    col:
    width:
    height:
  filters:
  - name: supplier parent name
    title: supplier parent name
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.supplier_parent_name
    listens_to_filters: []
    allow_multiple_values: true
  - name: Cat Lvl 2
    title: Cat Lvl 2
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category_level_2
    listens_to_filters:
    - supplier parent name
    allow_multiple_values: true
  - name: Cat Lvl 3
    title: Cat Lvl 3
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category_level_3
    listens_to_filters:
    - Cat Lvl 2
    - supplier parent name
    allow_multiple_values: true
  - name: Cat Lvl 4
    title: Cat Lvl 4
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category_level_4
    listens_to_filters:
    - Cat Lvl 2
    - Cat Lvl 3
    - supplier parent name
    allow_multiple_values: true
  - name: Cat Lvl 5
    title: Cat Lvl 5
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category_level_5
    listens_to_filters:
    - Cat Lvl 2
    - Cat Lvl 3
    - Cat Lvl 4
    - supplier parent name
    allow_multiple_values: true
  - name: Cat Lvl 6
    title: Cat Lvl 6
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.category_level_6
    listens_to_filters:
    - Cat Lvl 2
    - Cat Lvl 3
    - Cat Lvl 4
    - Cat Lvl 5
    - supplier parent name
    allow_multiple_values: true
  - name: Spend Type
    title: Spend Type
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.spend_type
    listens_to_filters: []
    allow_multiple_values: true
  - name: Data Source
    title: Data Source
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.data_source
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Date
    title: Transaction Date
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_date
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Calendar Year
    title: Transaction Calendar Year
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_year
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Calendar Quarter
    title: Transaction Calendar Quarter
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_quarter_of_year
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Calendar Month
    title: Transaction Calendar Month
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_month_num
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Fiscal Year
    title: Transaction Fiscal Year
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_fiscal_year
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Fiscal Quarter
    title: Transaction Fiscal Quarter
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_fiscal_quarter_of_year
    listens_to_filters: []
    allow_multiple_values: true
  - name: Transaction Fiscal Month
    title: Transaction Fiscal Month
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.transaction_date_fiscal_month_num
    listens_to_filters: []
    allow_multiple_values: true
  - name: Supplier Parent
    title: Supplier Parent
    type: field_filter
    default_value: ''
    model: fujifilm_audit
    explore: data
    field: data.supplier_parent_name
    listens_to_filters: []
    allow_multiple_values: true
