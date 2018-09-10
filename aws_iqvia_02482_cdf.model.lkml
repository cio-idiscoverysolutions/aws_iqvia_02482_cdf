connection: "aws_iqvia-02482-cdf"

# include all the views
include: "*.view"

datagroup: aws_iqvia_02482_cdf_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aws_iqvia_02482_cdf_default_datagroup

explore: all_search_hits {}

explore: all_jmp_files {}

explore: all_lp_files {}

explore: all_search_hits_details_jmp {}

explore: all_search_hits_details_lp {}

explore: all_users {}

# - explore: cdf_catalog

# - explore: cdf_convert

# - explore: cdf_q1007215_jmp_091808_010300_master

# - explore: cdf_q1007215_lp_091808_010300_master

# - explore: cdf_q773984_jmp_091808_010300_master

# - explore: cdf_q773984_lp_091808_010300_master

# - explore: cdf_q779337_jmp_091808_010300_master

# - explore: cdf_q779337_lp_091808_010300_master

# - explore: cdf_q781733_jmp_091808_010300_master

# - explore: cdf_q781733_lp_091808_010300_master

# - explore: cdf_q809045_lp_091808_010300_master

# - explore: cdf_q819491_jmp_091808_010300_master

# - explore: cdf_q819491_lp_091808_010300_master

# - explore: cdf_q835677_jmp_091808_010300_master

# - explore: cdf_q835677_lp_091808_010300_master

# - explore: cdf_q837388_jmp_091808_010300_master

# - explore: cdf_q837388_lp_091808_010300_master

# - explore: cdf_q837390_jmp_091808_010300_master

# - explore: cdf_q837390_lp_091808_010300_master

# - explore: cdf_q841266_jmp_091808_010300_master

# - explore: cdf_q841266_lp_091808_010300_master

# - explore: cdf_q845756_lp_091808_010300_master

# - explore: cdf_stats

# - explore: cdf_user_names_master

# - explore: csv2_sql_log

# - explore: data_dictionary

# - explore: i_ds_search_hits

# - explore: log

# - explore: mexico_files_all_de_duped_alpha

# - explore: mexico_files_dir_sections

# - explore: src_dlvry

# - explore: src_files

# - explore: src_master
