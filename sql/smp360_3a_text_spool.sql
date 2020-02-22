DEF title = 'OS Users';
DEF out_filename = 'ospasswd_&&current_time..txt'
DEF in_filename = '/etc/passwd'

HOS if [ -f /etc/passwd ]; then cat /etc/passwd > ospasswd.txt; fi

DEF one_spool_text_file = './ospasswd.txt'
DEF one_spool_text_file_rename = 'Y'
DEF skip_html = '--'
DEF skip_text_file = ''
@@&&9a_pre_one.

----------------

-- When one_spool_text_file_rename = 'N', file won't be renamed and moved to the zip file. Only useful to create pointers to files already inside zip.

DEF title = 'Readme file';

DEF one_spool_text_file = '00000_readme_first.txt'
DEF one_spool_text_file_rename = 'N'
DEF skip_html = '--'
DEF skip_text_file = ''
@@&&9a_pre_one.

----------------

DEF title = 'My file';

HOS echo "hi hi hi" > myfile.txt

DEF one_spool_text_file = 'myfile.txt'
DEF one_spool_text_file_rename = 'Y'
DEF skip_html = '--'
DEF skip_text_file = ''
@@&&9a_pre_one.

----------------
