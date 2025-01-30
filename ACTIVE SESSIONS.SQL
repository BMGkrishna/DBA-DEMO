set lines 300 pages 1000
col SID for 99999
col SPID for a6
col OSUSER for a12
col MACHINE for a64
col PROGRAM for a16
col USERNAME for a12
col con_id for 999
col LOGON_TIME for a20

select vs.USERNAME,
to_char(vs.LOGON_TIME,'DD-MM-YY HH24:MI:SS') LOGON_TIME,
vp.SPID,
vs.SID,
vs.SERIAL#,
vs.OSUSER,
vs.MACHINE,
vs.PROGRAM, 
VS.con_ID,
VS.INST_ID,
vs.status
from GV$SESSION vs, GV$PROCESS vp
where vs.PADDR=vp.ADDR
and vs.USERNAME is not null
and vs.USERNAME != 'SYS'
order by vs.username,vs.MACHINE,vs.OSUSER,VS.con_ID
/ 
