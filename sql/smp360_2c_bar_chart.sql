DEF title = 'Bar Sample 1';
DEF main_table = 'DUAL';
BEGIN
  :sql_text := q'[
SELECT 'Tower 1',
       40 percent,
       '34CF27' style,
       'This text on mouse over' text
FROM
  dual
UNION ALL
SELECT 'Tower 2',
       30 percent,
       '9FFA9D' style,
       'Now this' text
FROM
  dual
UNION ALL
SELECT 'Tower 3',
       20 percent,
       '0252D7' style,
       'And this' text
FROM
  dual
UNION ALL
SELECT 'Tower 4',
       5 percent,
       '1E96DD' style,
       'And finally this one' text
FROM
  dual
]';
END;
/

DEF vaxis = 'Most used tower'
DEF haxis = 'My Towers'
DEF skip_html = '--'
DEF skip_bch = ''
@@&&9a_pre_one.

-------------------------------------------

-- Same as before but changing bar_height

DEF title = 'Bar Sample 2';
DEF main_table = 'DUAL';
BEGIN
  :sql_text := q'[
SELECT 'Tower 1',
       40 percent,
       '34CF27' style,
       'This text on mouse over' text
FROM
  dual
UNION ALL
SELECT 'Tower 2',
       30 percent,
       '9FFA9D' style,
       'Now this' text
FROM
  dual
UNION ALL
SELECT 'Tower 3',
       20 percent,
       '0252D7' style,
       'And this' text
FROM
  dual
UNION ALL
SELECT 'Tower 4',
       5 percent,
       '1E96DD' style,
       'And finally this one' text
FROM
  dual
]';
END;
/
DEF skip_html = '--'
DEF skip_bch = ''
DEF bar_height = '20%'

@@&&9a_pre_one.