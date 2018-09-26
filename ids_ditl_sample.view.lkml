view: ids_ditl_sample {
  sql_table_name: dbo.ids_DITL_Sample ;;

  dimension_group: Acccess_Date {

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
    sql: ${TABLE}.Acccess_Date ;;
  }

  dimension: cdf_table_name {
    type: string
    sql: ${TABLE}.CDF_TableName ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: create_date {
    type: string
    sql: ${TABLE}.Create_Date ;;
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

  dimension: employee_id {
    type: string
    sql: ${TABLE}.EmployeeID ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.FILENAME ;;
  }

  dimension: modify_date {
    type: string
    sql: ${TABLE}.Modify_Date ;;
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
