set global event_scheduler = on;

create event atualizar_status_aulas
on schedule every 1 day
do
	update classes
	set classStatus = 'Realizada'
	where classDate < CURDATE()
      and classStatus = 'Agendada';