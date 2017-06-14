-- moat369 configuration file. for those cases where you must change moat369 functionality

/*********************** software configuration (do not remove ) ************************/
@@00_software

/*************************** ok to modify (if really needed) ****************************/

-- report column, or section, or range of columns or range of sections i.e. 3, 3-4, 3a, 3a-4c, 3-4c, 3c-4 / null means all (default)
DEF moat369_sections = '';

-- history days (default 31)
DEF moat369_conf_days = '31';

-- range of dates below superceed history days when values are other than YYYY-MM-DD
DEF moat369_conf_date_from = 'YYYY-MM-DD';
DEF moat369_conf_date_to   = 'YYYY-MM-DD';

-- working hours are defined between these two HH24MM values (i.e. 7:30AM and 7:30PM)
DEF moat369_conf_work_time_from = '0730';
DEF moat369_conf_work_time_to   = '1930';

-- working days are defined between 1 (Sunday) and 7 (Saturday)
DEF moat369_conf_work_day_from = '2';
DEF moat369_conf_work_day_to   = '6';

-- defines if the output will be encrypted using provided AEG certificate
DEF moat369_conf_encrypt_output = 'OFF';
DEF moat369_conf_encrypt_html   = 'OFF';

/**************************** not recommended to modify *********************************/

-- excluding report types reduce usability while providing marginal performance gain
DEF moat369_conf_incl_html  = 'Y';
DEF moat369_conf_incl_text  = 'Y';
DEF moat369_conf_incl_csv   = 'Y';
DEF moat369_conf_incl_line  = 'Y';
DEF moat369_conf_incl_pie   = 'Y';
DEF moat369_conf_incl_bar   = 'Y';
DEF moat369_conf_incl_graph = 'Y';
DEF moat369_conf_incl_file  = 'Y';

-- Default values skip_xxx for each type. Usually you enable HTML and control the others inside sections with "skip_" variables.
DEF moat369_conf_def_html  = 'Y';
DEF moat369_conf_def_text  = 'N';
DEF moat369_conf_def_csv   = 'N';
DEF moat369_conf_def_line  = 'N';
DEF moat369_conf_def_pie   = 'N';
DEF moat369_conf_def_bar   = 'N';
DEF moat369_conf_def_graph = 'N';
DEF moat369_conf_def_file  = 'N';

-- excluding awr reports substantially reduces usability with minimal performance gain
DEF moat369_conf_incl_tkprof   = 'N';

/**************************** enter your modifications here *****************************/

--DEF moat369_conf_date_from = '2015-03-01';
--DEF moat369_conf_date_to   = '2015-03-10';

--DEF moat369_conf_incl_text = 'N';
--DEF moat369_conf_incl_csv = 'N';

--DEF DEBUG      = 'ON'