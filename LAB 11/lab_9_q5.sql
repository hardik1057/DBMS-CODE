DECLARE
  CURSOR c_emp IS
    SELECT emp_id, salary FROM Emp_cursor WHERE dept_no = 'D05';
  v_raise_date DATE := SYSDATE;
BEGIN
  FOR emp IN c_emp LOOP
    UPDATE Emp_cursor SET salary = emp.salary * 1.1 WHERE emp_id = emp.emp_id;
    INSERT INTO Emp_raise (emp_id, raise_date, salary) VALUES (emp.emp_id, v_raise_date, emp.salary * 0.1);
  END LOOP;
  DBMS_OUTPUT.PUT_LINE('Salary of employees in department D05 has been raised by 10%');
END;
/