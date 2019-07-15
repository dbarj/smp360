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

## Execution Steps ##

1. Download and unzip latest smp360 version and, navigate to the root of smp360-master directory:

```
$ wget -O smp360.zip https://github.com/dbarj/smp360/archive/master.zip
$ unzip smp360.zip
$ cd smp360-master/
```

2. Download and unzip latest moat369 API inside smp360_master directory. Rename extract folder to moat369:

```
$ wget -O moat369.zip https://github.com/dbarj/moat369/archive/master.zip
$ unzip moat369.zip
$ mv moat369-master/* moat369/
```

3. Connect as SYS, DBA, or any User with Data Dictionary access:

```
$ sqlplus / as sysdba
```

4. Execute smp360.sql:

```
SQL> @smp360.sql
```

## Results ##

1. Unzip output **smp360_dbname_hostname_YYYYMMDD_HH24MI.zip** into a directory on your PC.

2. Review main html file **00001_smp360_dbname_index.html**.