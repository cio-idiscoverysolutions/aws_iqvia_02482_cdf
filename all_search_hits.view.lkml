view: all_search_hits {
  sql_table_name: dbo.ALL_SearchHits ;;

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

  dimension: employee_id {
    type: string
    sql: ${TABLE}."Employee ID" ;;
  }

  dimension: has_data {
    type: string
    sql: ${TABLE}."Has Data" ;;
  }

  dimension: host_name {
    type: string
    sql: ${TABLE}.HostName ;;
  }

  dimension: search_term {
    type: string
    sql: ${TABLE}.Search_Term ;;
  }

  dimension: target_name {
    type: string
    sql: ${TABLE}.target_name ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.file_name ;;
  }

  dimension: FirstName {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: LastName {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: FullName {
    type: string
    sql: ${TABLE}.FullName ;;
  }

  dimension: FullName_And_ID {
    type: string
    sql: ${TABLE}.FullName_And_ID
  }



  measure: count {
    type: count
    drill_fields: [host_name, target_name]
  }

  measure: number_of_unique_employees {
    type: count_distinct
    sql: ${TABLE}.FullName_And_ID ;;
  }

  measure: number_of_unique_files {
    type: count_distinct
    sql: ${TABLE}.file_name ;;
  }

}
