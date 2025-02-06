CREATE DEFINER=`root`@`localhost` FUNCTION `get_fiscal_quarter`(
calender_date date
) RETURNS char(2) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	Declare m TINYINT;
    declare qtr CHAR(2);
    set m = MONTH(calender_date);
    case
		when m in (9,10,11) then set qtr = "Q1";
        when m in (12,1,2) then set qtr = "Q2";
        when m in (3,4,5) then set qtr = "Q3";
        else set qtr = "Q4";
    end case;
RETURN qtr;
END