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
    alias: [date_alias]
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

  measure: number_of_unique_files {
    type: count_distinct
    sql: ${TABLE}.filename ;;
  }

  measure: number_of_unique_users {
    type: count_distinct
    sql: ${TABLE}.Name ;;
  }

  measure: min_date {
    type: date
    sql: Min(${date_date}) ;;
    convert_tz: no
  }

  measure: max_date {
    type: date
    sql: MAX(${date_date}) ;;
    convert_tz: no
  }

  parameter: date_part {
    type: string
    allowed_value: {
      label: "Years"
      value: "DAYOFYEAR"
    }
    allowed_value: {
      label: "Weeks"
      value: "DAYOFWEEK"
    }
    allowed_value: {
      label: "Months"
      value: "DAYOFMONTH"
    }
  }

  dimension: dynamic_date {
    type: date
    sql: DATEADD(d, (-1 * {% parameter date_part %}(${TABLE}.Date) + 1), ${TABLE}.Date) ;;
  }

}
