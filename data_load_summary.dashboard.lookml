- dashboard: Data Load Summary
  layout: newspaper
  elements:
  - name: Time Validation
    label: Time Validation
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.transaction_date_month
    - data.total_spend
    - data.line_count
    - data.original_supplier_count
    - data.supplier_count
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
    listen: {}
    row: 0
    col: 0
    width: 11
    height: 9
  - name: Top 10 Normalized Suppliers
    label: Top 10 Normalized Suppliers
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.supplier_parent_name
    - data.total_spend
    - data.original_supplier_count
    - data.supplier_count
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
    listen: {}
    row: 9
    col: 0
    width: 11
    height: 8
  - name: Top 10 Classifications
    label: Top 10 Classifications
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.category_level_3
    - data.total_spend
    - data.original_supplier_count
    - data.supplier_count
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
    listen: {}
    row: 9
    col: 11
    width: 11
    height: 8
  - name: Input File Validation
    label: Input File Validation
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.total_spend
    - data.line_count
    - data.original_supplier_count
    - data.supplier_count
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
    listen: {}
    row: 0
    col: 11
    width: 11
    height: 5
  - name: Classification Depth
    label: Classification Depth
    model: fujifilm_audit
    explore: data
    type: table
    fields:
    - data.Category_Classification_Depth
    - data.total_spend
    - data.original_supplier_count
    - data.supplier_count
    sorts:
    - data.total_spend desc
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: of_total_spend
      label: "% of Total Spend"
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
    row: 5
    col: 11
    width: 11
    height: 4
