CREATE TABLE random_tables.session_logs (`ts` DATETIME, `session_id` INT, `user_id` INT, `log` TEXT);
	INSERT INTO `random_tables`.`session_logs` 
                (`ts`, `session_id`, `user_id`, `log`) 
	VALUES 
            	('2022-10-04 08:14:07', '898812', '523', 'CLICKED | Courses Buttom'),
        	('2022-10-14 08:18:35', '898812', '523', 'NAVIAGE BACK | Python course page , codebasics.io'),
        	('2022-10-16 12:07:00', '965345', '523', 'REVIEW GENERATED | Data analytics in power bi'),
        	('2022-10-22 14:09:22', '188567', '707', 'NEW LOGIN | New login, user name: tasty@jalebi.com'),
        	('2022-10-22 18:10:06', '188567', '707', 'COURSE PURCHASED | Data analytics in power bi, user name: tasty@jalebi.com');