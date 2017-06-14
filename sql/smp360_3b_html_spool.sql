-- Usefull when :sql_text query will return a HTML output.

-- Example 1:

DEF title = 'Test 1';
DEF main_table = '';
exec :sql_text := q'[SELECT '<font size="40">Hello there!</font> ' from dual]';

DEF skip_html_spool = ''
DEF skip_html = '--'
@@&&9a_pre_one.

-- Example 2:

COL current_time NEW_V current_time FOR A15
SELECT 'current_time: ' x, TO_CHAR(SYSDATE, 'YYYYMMDD_HH24MISS') current_time FROM DUAL;
COL current_time clear

DEF repname = 'redost&&current_time'

PRO Executing HM Integrity Check. Please wait ...
BEGIN
	DBMS_HM.RUN_CHECK('Redo Integrity Check', '&&repname'); 
END;
/


DEF title = 'Redo Integrity Check';
DEF main_table = '';
exec :sql_text := q'[SELECT DBMS_HM.GET_RUN_REPORT('&&repname','html','detail') from dual]';

DEF skip_html_spool = ''
DEF skip_html = '--'
@@&&9a_pre_one.