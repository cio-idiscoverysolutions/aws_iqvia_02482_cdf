view: all_users {
  sql_table_name: dbo.ALL_Users ;;

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


  measure: count {
    type: count
    drill_fields: [host_name]
  }
}
