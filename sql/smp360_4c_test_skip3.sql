DEF title = 'Exec with Skip Sample'
DEF main_table = 'V$DATABASE';
BEGIN
  :sql_text := 'SELECT USERNAME
&&skip_ver_le_11. , ORACLE_MAINTAINED
FROM DBA_USERS
';
END;
/
@@&&9a_pre_one.

-- Will only execute the query (call 9a_pre_one) if "skip_ver" variable is null
-- For 12c, Sections 1-3 will not be in the final output

DEF title = 'Section 4c - Step 1'
DEF main_table = 'V$DATABASE';
@@&&fc_gen_select_star_query. '&&main_table.' 'sql_text'
@@&&skip_ver_le_12_2.&&9a_pre_one.

DEF title = 'Section 4c - Step 2'
DEF main_table = 'V$DATABASE';
@@&&fc_gen_select_star_query. '&&main_table.' 'sql_text'
@@&&skip_ver_le_12_1.&&9a_pre_one.

DEF title = 'Section 4c - Step 3'
DEF main_table = 'V$DATABASE';
@@&&fc_gen_select_star_query. '&&main_table.' 'sql_text'
@@&&skip_ver_le_12.&&9a_pre_one.

DEF title = 'Section 4c - Step 4'
DEF main_table = 'V$DATABASE';
@@&&fc_gen_select_star_query. '&&main_table.' 'sql_text'
@@&&skip_ver_le_11_2.&&9a_pre_one.

DEF title = 'Section 4c - Step 5'
DEF main_table = 'V$DATABASE';
@@&&fc_gen_select_star_query. '&&main_table.' 'sql_text'
@@&&skip_ver_le_11_1.&&9a_pre_one.

DEF title = 'Section 4c - Step 6'
DEF main_table = 'V$DATABASE';
@@&&fc_gen_select_star_query. '&&main_table.' 'sql_text'
@@&&skip_ver_le_11.&&9a_pre_one.

DEF title = 'Section 4c - Step 7'
DEF main_table = 'V$DATABASE';
@@&&fc_gen_select_star_query. '&&main_table.' 'sql_text'
@@&&skip_ver_le_10_2.&&9a_pre_one.

DEF title = 'Section 4c - Step 8'
DEF main_table = 'V$DATABASE';
@@&&fc_gen_select_star_query. '&&main_table.' 'sql_text'
@@&&skip_ver_le_10_1.&&9a_pre_one.

DEF title = 'Section 4c - Step 9'
DEF main_table = 'V$DATABASE';
@@&&fc_gen_select_star_query. '&&main_table.' 'sql_text'
@@&&skip_ver_le_10.&&9a_pre_one.

DEF title = 'Section 4c - Step 10'
DEF main_table = 'V$DATABASE';
@@&&fc_gen_select_star_query. '&&main_table.' 'sql_text'
@@&&skip_ver_le_9_2.&&9a_pre_one.

DEF title = 'Section 4c - Step 11'
DEF main_table = 'V$DATABASE';
@@&&fc_gen_select_star_query. '&&main_table.' 'sql_text'
@@&&skip_ver_le_9_1.&&9a_pre_one.

DEF title = 'Section 4c - Step 12'
DEF main_table = 'V$DATABASE';
@@&&fc_gen_select_star_query. '&&main_table.' 'sql_text'
@@&&skip_ver_le_9.&&9a_pre_one.
