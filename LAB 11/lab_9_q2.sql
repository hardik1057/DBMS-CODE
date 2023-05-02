DECLARE
	emp_num NUMBER;
BEGIN
	UPDATE EMP_CURSOR SET salary = salary * 1.15 WHERE DEPT_NO = 'D05';
	emp_num := SQL%ROWCOUNT;
	IF emp_num>0 THEN
		DBMS_OUTPUT.PUT_LINE(emp_num || ' Employee records modified');
	ELSE
		DBMS_OUTPUT.PUT_LINE('There is no employee working for dept. D05');
	END IF;
END;
/