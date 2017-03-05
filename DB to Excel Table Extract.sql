/*Enter your table name on lines 4 & 12. Edit line 13 for ordering.
It is suggested that the SELECT * be modified to return only the necessary columns*/

DECLARE @SIZE AS FLOAT = (SELECT COUNT(1) FROM <Your_Large_Table>)
DECLARE @MAXN AS INT = CEILING(@SIZE/POWER(2,20))
DECLARE @N AS INT = 0


WHILE @N < @MAXN
BEGIN
	SELECT * 
	FROM <Your_Large_Table>
	ORDER BY <id_column>
	OFFSET POWER(2,20)*@N ROWS
	FETCH NEXT POWER(2,20) ROWS ONLY

	SET @N = @N+1
END
