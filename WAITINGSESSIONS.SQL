col WAIT_CLASS for a20
 select 
   blocking_session, 
   sid, 
   serial#, 
   wait_class,
   event,
   seconds_in_wait
from 
   Gv$session
where 
WAIT_CLASS !='Idle'
order by 
  
