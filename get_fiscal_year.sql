CREATE DEFINER=`root`@`localhost` FUNCTION `get_fiscal_year`(
calendar_date date
) RETURNS int
    DETERMINISTIC
BEGIN
  declare fiscal_year INT;
  set fiscal_year = YEAR(DATE_ADD(calendar_date,INTERVAL 4 MONTH));
  return fiscal_year;
END