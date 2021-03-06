- dashboard: Data Load Summary
  layout: newspaper
  elements:
  - name: Time Validation
    label: Time Validation
    title: Time Validation
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.transaction_date_month
    - data.total_spend
    - data.original_supplier_count
    - data.supplier_parent_count
    - data.line_count

    fill_fields:
    - data.transaction_date_month
    sorts:
    - data.transaction_date_month desc
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
    series_labels:
      data.transaction_date_month: Date
      data.supplier_parent_count: Normalized Suppliers
      data.line_count: "#of Lines"
      data.original_supplier_count: "#Original Suppliers"
      data.total_spend: Spend
    listen: {}
    row: 0
    col: 0
    width: 11
    height: 9

  - name: Top 10 Classifications
    label: Top 10 Classifications
    title: Top 10 Classifications
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.category_level_3
    - data.total_spend
    - data.original_supplier_count
    - data.supplier_parent_count
    - data.line_count
    sorts:
    - data.total_spend desc
    limit: 10
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
    series_labels:
      data.transaction_date_month: Date
      data.supplier_parent_count: Normalized Suppliers
      data.line_count: "#of Lines"
      data.original_supplier_count: "#Original Suppliers"
      data.total_spend: Spend
    listen: {}
    row: 9
    col: 11
    width: 11
    height: 8

  - name: Top 10 Normalized Suppliers
    label: Top 10 Normalized Suppliers
    title: Top 10 Normalized Suppliers
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.supplier_parent_name
    - data.total_spend
    - data.original_supplier_count
    - data.supplier_parent_count
    - data.line_count
    sorts:
    - data.total_spend desc
    limit: 10
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
    series_labels:
      data.transaction_date_month: Date
      data.supplier_parent_count: Normalized Suppliers
      data.line_count: "#of Lines"
      data.original_supplier_count: "#Original Suppliers"
      data.total_spend: Spend
    listen: {}
    row: 9
    col: 0
    width: 11
    height: 8
  - name: Input File Validation
    label: Input File Validation
    title: Input File Validation
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.spend_file_name
    - data.total_spend
    - data.line_count
    - data.original_supplier_count
    - data.supplier_parent_count
    - data.spend_file_name
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
    series_labels:
     data.transaction_date_month: Date
     data.supplier_parent_count: Normalized Suppliers
     data.line_count: "#of Lines"
     data.original_supplier_count: "#Original Suppliers"
     data.total_spend: Spend
     data.spend_file_name: File Name
    listen: {}
    row: 0
    col: 11
    width: 11
    height: 5
  - name: Classification Depth
    label: Classification Depth
    title: Classification Depth
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.Category_Classification_Depth
    - data.total_spend
    - data.supplier_parent_count
    - data.line_count
    sorts:
    - data.total_spend desc
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: percent_total_spend
      label: Percen Total Spend
      expression: "${data.total_spend}/${data.total_spend:total}"
      value_format:
      value_format_name: percent_0
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
    series_labels:
     data.transaction_date_month: Date
     data.supplier_parent_count: Normalized Suppliers
     data.line_count: "#of Lines"
     data.original_supplier_count: "#Original Suppliers"
     data.total_spend: Spend
     percent_total_spend: "% Spend"
    row: 5
    col: 11
    width: 11
    height: 4
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
