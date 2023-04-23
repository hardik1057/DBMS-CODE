DECLARE
	vname EMP_CURSOR.emp_name%TYPE;
	vdesg EMP_CURSOR.emp_id%TYPE;
	did EMP_CURSOR.dept_no%TYPE;
	CURSOR empcr(dept EMP_CURSOR.dept_no%TYPE) IS SELECT emp_name, emp_id FROM EMP_CURSOR WHERE dept_no=dept;
BEGIN
	did := '&dept_id';
	OPEN empcr(did);
	DBMS_OUTPUT.PUT_LINE('Employee in dept.'||did);
	LOOP
		FETCH empcr INTO vname, vdesg;
		EXIT WHEN empcr%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(vname||' '||vdesg);
	END LOOP;
	CLOSE empcr;
END;
/