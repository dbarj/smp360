-- Note that it's not necessary to " def skip_html = '' " as this is already the default behavior.
-- Default behavior can be changed inside 00_config.sql


-- Query that will run SELECT * FROM v$instance and generate a HTML output
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
DEF skip_text = ''
DEF skip_csv = ''
@@&&9a_pre_one.