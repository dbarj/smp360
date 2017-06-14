SET ECHO ON
SET TERM ON

DEF title = 'Arrow';
DEF main_table = 'DUAL';
BEGIN
  :sql_text := '
SELECT ''A'', ''B'', ''[color=blue]'', null FROM dual UNION ALL
SELECT ''A'', ''C'', ''[color=blue]'', null FROM dual UNION ALL
SELECT ''C'', ''D'', ''[color=blue]'', null FROM dual UNION ALL
SELECT ''B'', ''E'', ''[color=blue]'', null FROM dual UNION ALL
SELECT ''E'', ''B'', ''[color=blue]'', null FROM dual UNION ALL
SELECT ''E'', ''A'', ''[color=blue]'', null FROM dual UNION ALL
SELECT ''D'', ''F'', ''[color=green]'',null FROM dual UNION ALL
SELECT ''G'', ''H'', ''[color=red]'',  null FROM dual
';
END;
/
DEF skip_html = '--'
DEF skip_graph = ''
@@&&9a_pre_one.

----------------

-- Real Life example: Track how deep a proxy user can go within Oracle DB

DEF title = 'Proy Users';
DEF skip_html = '--';
DEF skip_graph = '';
@@&&fc_main_table_name. '&&is_cdb.' 'CDB_PROXIES' 'DBA_PROXIES'
EXEC :sql_text := q'|SELECT  proxy , client, '[color=blue]', null FROM dba_proxies ORDER BY client|';
@@&&9a_pre_one.