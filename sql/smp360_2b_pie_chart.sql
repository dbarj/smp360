DEF title = 'Pie Sample 1';
DEF main_table = 'DUAL';
BEGIN
  :sql_text := q'[
SELECT 'Scott',
       90 samples,
       45 percent,
       'a' text
FROM
  dual
UNION ALL
SELECT 'Tiger',
       90 samples,
       45 percent,
       'b' text
FROM
  dual
UNION ALL
SELECT 'Others',
       20 samples,
       10 percent,
       'c' text
FROM
  dual
]';
END;
/
DEF skip_html = '--'
DEF skip_pch = ''
@@&&9a_pre_one.