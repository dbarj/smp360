# smp360

SMP360 is a tool to show many functionalities of [MOAT369 Framework](https://github.com/dbarj/moat369).

The goal of MOAT369 framework is to allow anyone to easily extract information from Oracle Databases or Operating System into a fancy HTML format with tables and charts, with minimal coding required.

In Sample 360 you will see in action:
- HTML / CSV / TXT output from a query.
- Many Google Chart Graphs Output from SQL / CSV File
- Container/Non-CDB Database Support
- HTML Spool from File / Query
- Text File Spool
- Skip Based on Oracle Version
- etc

OBS: The zip file in root directory is a sample HTML output.

## Steps ##

1. Unzip smp360_master.zip, navigate to the root smp360_master directory, and connect as SYS, 
   DBA, or any User with Data Dictionary access:

   $ unzip smp360_master.zip
   $ cd smp360_master
   $ sqlplus / as sysdba

2. Execute smp360.sql indicating if your database is licensed for the Oracle Tuning Pack, 
   the Diagnostics Pack or None [ T | D | N ]. Example below specifies Tuning Pack.

   SQL> @smp360.sql T
   
3. Unzip output smp360_<dbname>_<host>_YYYYMMDD_HH24MI.zip into a directory on your PC

4. Review main html file 00001_smp360_<dbname>_index.html