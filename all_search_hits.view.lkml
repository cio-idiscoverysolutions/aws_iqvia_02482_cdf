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

  measure: count {
    type: count
    drill_fields: [host_name, target_name]
  }
}
