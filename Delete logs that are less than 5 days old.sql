SELECT * FROM random_tables.session_logs
delimiter |
	CREATE EVENT e_daily_log_purge
    	ON SCHEDULE
      	EVERY 5 SECOND
    	COMMENT 'Purge logs that are more than 5 days old'
    	DO
      	     BEGIN
        	delete from random_tables.session_logs 
        	where DATE(ts) < DATE("2022-10-22") - interval 5 day;
      	     END |
        delimiter ;