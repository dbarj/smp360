-- Query that will run SELECT * FROM DUAL and generate a HTML output
DEF title = 'Simple SQL'
DEF main_table = 'v$instance'
BEGIN
  :sql_text := q'[
SELECT
  *
FROM
  v$instance
]';
END;
/
@@&&9a_pre_one.

-- Another way of writing the same query
DEF title = 'Simple SQL 2'
DEF main_table = 'v$instance'
EXEC :sql_text := 'SELECT * FROM v$instance';
@@&&9a_pre_one.

-- Another way of writing the same query
DEF title = 'Simple SQL 3'
DEF main_table = 'v$instance';
@@&&fc_gen_select_star_query. 'v$instance' 'sql_text'
@@&&9a_pre_one.

-- Another way of writing the same query
DEF title = 'Simple SQL 4'
DEF main_table = 'v$instance';
@@&&fc_gen_select_star_query. '&&main_table.' 'sql_text'
@@&&9a_pre_one.

-- Depending if it is cdb database, will run the either sql_text or sql_text_cdb
DEF title = 'Users 1'
DEF main_table = 'DBA_USERS'
BEGIN
 :sql_text := 'SELECT * FROM dba_users';
 :sql_text_cdb := 'SELECT * FROM cdb_users';
END;
/
@@&&9a_pre_one.

-- Same as above, but define main_table based if it is cdb database
DEF title = 'Users 2'
@@&&fc_main_table_name. '&&is_cdb.' 'CDB_USERS' 'DBA_USERS'
EXEC :sql_text := 'SELECT * FROM dba_users';
EXEC :sql_text_cdb := 'SELECT * FROM cdb_users';
@@&&9a_pre_one.


-- Same as above, but define query based on main_table
DEF title = 'Users 3'
@@&&fc_main_table_name. '&&is_cdb.' 'CDB_USERS' 'DBA_USERS'
@@&&fc_gen_select_star_query. '&&main_table.' 'sql_text'
@@&&9a_pre_one.


-- Define main_table based on Oracle Version
DEF title = 'Scheduler Jobs'
@@&&fc_main_table_name. '&&is_ver_ge_10.' 'DBA_SCHEDULER_JOBS' 'DBA_JOBS'
@@&&fc_gen_select_star_query. '&&main_table.' 'sql_text'
@@&&9a_pre_one.