DEF title = 'Line Chart 1'
DEF main_table = 'DUAL'
BEGIN
  :sql_text := q'[
SELECT
  rownum           snap_id,
  TO_CHAR(sysdate+rownum,  'YYYY-MM-DD HH24:MI:SS') begin_time,
  TO_CHAR(sysdate+rownum+1,'YYYY-MM-DD HH24:MI:SS') end_time,
  mod(rownum,10)   line1,
  mod(rownum,5)    line2,
  mod(rownum,2)    line3,
  mod(rownum,20)   line4,
  0                dummy5,
  0                dummy6,
  0                dummy7,
  0                dummy8,
  0                dummy9,
  0                dummy10,
  0                dummy11,
  0                dummy12,
  0                dummy13,
  0                dummy14,
  0                dummy15
FROM
  dual
CONNECT BY LEVEL <= 100
]';
END;
/


DEF tit_01 = 'Mod 10'
DEF tit_02 = 'Mod 5'
DEF tit_03 = 'Mod 2'
DEF tit_04 = 'Mod 20'

DEF vaxis = 'Total Elapsed Time in secs'
DEF chartype = 'LineChart'
DEF stacked = ''

DEF skip_lch = ''
@@&&9a_pre_one.

-- PS: Note that columns returning "0" are ignored by line graph and columns named "dummy" are ignored by html output.

-----------------------------------

-- Same graph but using AreaChart

DEF title = 'Line Chart 2'
DEF main_table = 'DUAL'
BEGIN
  :sql_text := q'[
SELECT
  rownum           snap_id,
  TO_CHAR(sysdate+rownum,  'YYYY-MM-DD HH24:MI:SS') begin_time,
  TO_CHAR(sysdate+rownum+1,'YYYY-MM-DD HH24:MI:SS') end_time,
  mod(rownum,10)   line1,
  mod(rownum,5)    line2,
  mod(rownum,2)    line3,
  mod(rownum,20)   line4,
  0                dummy5,
  0                dummy6,
  0                dummy7,
  0                dummy8,
  0                dummy9,
  0                dummy10,
  0                dummy11,
  0                dummy12,
  0                dummy13,
  0                dummy14,
  0                dummy15
FROM
  dual
CONNECT BY LEVEL <= 100
]';
END;
/

DEF tit_01 = 'Mod 10'
DEF tit_02 = 'Mod 5'
DEF tit_03 = 'Mod 2'
DEF tit_04 = 'Mod 20'

DEF vaxis = 'Total Elapsed Time in secs'
DEF chartype = 'AreaChart'
DEF stacked = ''

DEF skip_html = '--'
DEF skip_lch = ''
@@&&9a_pre_one.

-----------------------------------

-- Same graph but using AreaChart with Stacked

DEF title = 'Line Chart 3'
DEF main_table = 'DUAL'
BEGIN
  :sql_text := q'[
SELECT
  rownum           snap_id,
  TO_CHAR(sysdate+rownum,  'YYYY-MM-DD HH24:MI:SS') begin_time,
  TO_CHAR(sysdate+rownum+1,'YYYY-MM-DD HH24:MI:SS') end_time,
  mod(rownum,10)   line1,
  mod(rownum,5)    line2,
  mod(rownum,2)    line3,
  mod(rownum,20)   line4,
  0                dummy5,
  0                dummy6,
  0                dummy7,
  0                dummy8,
  0                dummy9,
  0                dummy10,
  0                dummy11,
  0                dummy12,
  0                dummy13,
  0                dummy14,
  0                dummy15
FROM
  dual
CONNECT BY LEVEL <= 100
]';
END;
/

DEF tit_01 = 'Mod 10'
DEF tit_02 = 'Mod 5'
DEF tit_03 = 'Mod 2'
DEF tit_04 = 'Mod 20'

DEF vaxis = 'Total Elapsed Time in secs'
DEF chartype = 'AreaChart'
DEF stacked = 'isStacked: true,';

DEF skip_html = '--'
DEF skip_lch = ''
@@&&9a_pre_one.

-----------------------------------

-- Line Graph from csv file separated by ;

DEF title = 'Line Chart 4'
DEF main_table = 'DUAL'

-- Creating a CSV File. This file may already exist.
HOS echo "Date;User;System;Idle" > my.csv
HOS echo "new Date(2017,05,18,16,00,06);20;10;70" >> my.csv
HOS echo "new Date(2017,05,18,16,00,07);10;10;80" >> my.csv
HOS echo "new Date(2017,05,18,16,00,08);0;10;90" >> my.csv

-- Converting CSV to Google Chart Data
HOS sh &&sh_csv_to_gchart_data. ";" my.csv > mydata.txt

-- If one_spool_line_chart_file variable is set, line_chart code will look for it and ignore sql_text.
DEF one_spool_line_chart_file = 'mydata.txt'
DEF vaxis = 'Total Elapsed Time in secs'
DEF chartype = 'AreaChart'
DEF stacked = 'isStacked: true,';

DEF skip_html = '--'
DEF skip_lch = ''
@@&&9a_pre_one.

HOS rm -f my.csv mydata.txt
