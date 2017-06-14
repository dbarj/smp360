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
DEF skip_html = '--'
DEF skip_text = ''
@@&&9a_pre_one.