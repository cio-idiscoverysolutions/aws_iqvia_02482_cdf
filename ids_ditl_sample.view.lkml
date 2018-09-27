view: ids_ditl_sample {
  sql_table_name: dbo.ids_DITL_Sample ;;

  dimension: access_type {
    type: string
    sql: ${TABLE}.AccessType ;;
  }

  dimension: cdf_table_name {
    type: string
    sql: ${TABLE}.CDF_TableName ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: data_source {
    type: string
    sql: ${TABLE}.Data_Source ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Date ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.EmployeeID ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.FILENAME ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: search_term {
    type: string
    sql: ${TABLE}.Search_Term ;;
  }

  dimension: target_name {
    type: string
    sql: ${TABLE}.target_name ;;
  }

  measure: count {
    type: count
    drill_fields: [name, target_name, cdf_table_name, filename]
  }
}
