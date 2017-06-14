-- All queries are limited by default to 10000 rows to avoid extremely big outputs.
-- To change this behaviour change max_rows before calling @@&&9a_pre_one.

DEF title = 'Returning 20000 rows'
DEF main_table = 'dual'
BEGIN
  :sql_text := q'[
SELECT
  rownum line
FROM
  dual
CONNECT BY LEVEL <= 20000
]';
END;
/
@@&&9a_pre_one.



DEF title = 'Trully returning 20000 rows'
DEF main_table = 'dual'
BEGIN
  :sql_text := q'[
SELECT
  rownum line
FROM
  dual
CONNECT BY LEVEL <= 20000
]';
END;
/
def MAX_ROWS = 20000
@@&&9a_pre_one.

-- I've defined default_user_list_1 and default_user_list_2 on "pre.sql", so this variable is defined before the sections start.

DEF title = 'Non Default Users'
DEF main_table = 'dual'
BEGIN
  :sql_text := q'[
SELECT
  username
FROM
  dba_users
WHERE
  username not in &&default_user_list_1. and
  username not in &&default_user_list_2.
]';
END;
/
def MAX_ROWS = 20000
@@&&9a_pre_one.