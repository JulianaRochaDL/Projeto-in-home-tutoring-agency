use tutoring_agency;

DELIMITER $$

create procedure gerar_aulas_fixas(p_idRecurring int)

begin
	declare v_idTeacher int;
    declare v_idStudent int;
    declare v_idSubject int;
    declare v_gradeLevel varchar(20);
    declare v_dayWeek varchar(20);
    declare v_timeClasse time;
    declare v_startDate date;
    declare v_endDate date;
    declare v_durationMinutes date;
    declare v_currentDate date;
    declare v_dayName varchar(20);

    select 
        idTeacher, 
        idStudent, 
        idSubject, 
        gradeLevel,
        dayWeek, 
        timeClasse, 
        startDate, 
        endDate, 
        durationMinutes
    into
        v_idTeacher, 
        v_idStudent, 
        v_idSubject, 
        v_gradeLevel,
        v_dayWeek, 
        v_timeClasse, 
        v_startDate, 
        v_endDate, 
        v_durationMinutes
    from recurringClasses
    where idRecurringClasse = p_idRecurring;

    set v_currentDate = v_startDate;

    while v_currentDate <= v_endDate do
        set v_dayName = case dayofweek(v_currentDate)
            when 1 then 'domingo'
            when 2 then 'segunda-feira'
            when 3 then 'terça-feira'
            when 4 then 'quarta-feira'
            when 5 then 'quinta-feira'
            when 6 then 'sexta-feira'
            when 7 then 'sábado'
        end;

        if v_dayName = v_dayWeek then
            insert into classes (
                idTeacher, 
                idStudent, 
                idSubject, 
                idRecurringClasse,
                gradeLevel, 
                classDate, 
                classTime, 
                durationMinutes,
                price, 
                typeClasse, 
                classStatus
            ) values (
                v_idTeacher, 
                v_idStudent, 
                v_idSubject, 
                p_idRecurring,
                v_gradeLevel, 
                v_currentDate, 
                v_timeClasse, 
                v_durationMinutes,
                90.00, 
                'Fixa',
               
                if(v_currentDate < CURDATE(), 'Realizada', 'Agendada')
            );
        end if;

        set v_currentDate = date_add(v_currentDate, interval 1 day);
    end while;
end$$

DELIMITER ;