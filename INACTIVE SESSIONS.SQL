select count(*),con_id,status from gv$session where status like 'INACTIVE%' group by con_id,status;
select count(*) machine,con_id,status from gv$session where machine like 'kafka%' group by con_id,status;
