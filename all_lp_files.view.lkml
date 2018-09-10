view: all_lp_files {
  sql_table_name: dbo.ALL_LP_Files ;;

  dimension: common_path {
    type: string
    sql: ${TABLE}.common_path ;;
  }

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: extra_info {
    type: string
    sql: ${TABLE}.extra_info ;;
  }

  dimension: file_access_date_utc {
    type: string
    sql: ${TABLE}.file_access_date_UTC ;;
  }

  dimension: file_create_date_utc {
    type: string
    sql: ${TABLE}.file_create_date_UTC ;;
  }

  dimension: file_modify_date_utc {
    type: string
    sql: ${TABLE}.file_modify_date_UTC ;;
  }

  dimension: file_size {
    type: string
    sql: ${TABLE}.file_size ;;
  }

  dimension: idlist_extra_info {
    type: string
    sql: ${TABLE}.IDList_extra_info ;;
  }

  dimension_group: ids_date_loaded {
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
    sql: ${TABLE}.IDS_DateLoaded ;;
  }

  dimension: ids_dlvry_id {
    type: number
    sql: ${TABLE}.IDS_DLVRY_ID ;;
  }

  dimension: ids_source_file {
    type: string
    sql: ${TABLE}.IDS_SourceFile ;;
  }

  dimension: ids_source_id {
    type: number
    sql: ${TABLE}.IDS_SourceID ;;
  }

  dimension: local_path {
    type: string
    sql: ${TABLE}.local_path ;;
  }

  dimension: mac_addr {
    type: string
    sql: ${TABLE}.mac_addr ;;
  }

  dimension: netbios_name {
    type: string
    sql: ${TABLE}.netbios_name ;;
  }

  dimension: network_device_info {
    type: string
    sql: ${TABLE}.network_device_info ;;
  }

  dimension: obj_id_date_utc {
    type: string
    sql: ${TABLE}.ObjID_date_UTC ;;
  }

  dimension: object_id {
    type: string
    sql: ${TABLE}.object_id ;;
  }

  dimension: source_path_filename {
    type: string
    sql: ${TABLE}.source_path_filename ;;
  }

  dimension: source_type {
    type: string
    sql: ${TABLE}.source_type ;;
  }

  dimension: tablename {
    type: string
    sql: ${TABLE}.Tablename ;;
  }

  dimension: target_inode {
    type: string
    sql: ${TABLE}.target_inode ;;
  }

  dimension: target_name {
    type: string
    sql: ${TABLE}.target_name ;;
  }

  dimension: target_seq_ {
    type: string
    sql: ${TABLE}.target_seq_ ;;
  }

  dimension: tgt_access_date_utc {
    type: string
    sql: ${TABLE}.tgt_access_date_UTC ;;
  }

  dimension: tgt_attrib {
    type: string
    sql: ${TABLE}.tgt_attrib ;;
  }

  dimension: tgt_create_date_utc {
    type: string
    sql: ${TABLE}.tgt_create_date_UTC ;;
  }

  dimension: tgt_modify_date_utc {
    type: string
    sql: ${TABLE}.tgt_modify_date_UTC ;;
  }

  dimension: vol_label {
    type: string
    sql: ${TABLE}.vol_label ;;
  }

  dimension: vol_serial {
    type: string
    sql: ${TABLE}.vol_serial ;;
  }

  dimension: vol_type {
    type: string
    sql: ${TABLE}.vol_type ;;
  }

  dimension: volume_id {
    type: string
    sql: ${TABLE}.volume_id ;;
  }

  measure: count {
    type: count
    drill_fields: [tablename, source_path_filename, target_name, netbios_name]
  }
}
