DECLARE
  emp_no Emp_cursor.emp_id%TYPE;
  emp_count NUMBER;
BEGIN
  emp_no := '&Enter_Employee_Number';
  SELECT COUNT(*) INTO emp_count FROM Emp_cursor WHERE emp_id = emp_no;
  IF emp_count = 1 THEN
    -- Update salary of employee
    UPDATE Emp_cursor SET salary = salary * 1.15 WHERE emp_id = emp_no;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Salary of employee ' || emp_no || ' has been updated by 15%.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Employee ' || emp_no || ' does not exist in the Emp_cursor table.');
  END IF;
END;
/