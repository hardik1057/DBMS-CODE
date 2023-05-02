DECLARE
    CURSOR emp_cursor IS
    SELECT emp_id, salary
    FROM Emp_cursor
    WHERE dept_no = 'D05';
    emp_record emp_cursor%ROWTYPE;
    raise_date DATE := SYSDATE;
BEGIN
  FOR emp_record IN emp_cursor LOOP
    emp_record.salary := emp_record.salary * 1.1;
    INSERT INTO Emp_raise (emp_id, raise_date, salary)
    VALUES (emp_record.emp_id, raise_date, emp_record.salary);
    UPDATE Emp_cursor
    SET salary = emp_record.salary
    WHERE emp_id = emp_record.emp_id;
  END LOOP;
  COMMIT;
  DBMS_OUTPUT.PUT_LINE('Salary updated and raise recorded for employees in department D05');
END;
/ 