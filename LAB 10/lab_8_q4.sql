DECLARE
  num INTEGER;
BEGIN
  num := &num_input;
  IF MOD(num, 2) = 0 THEN
    DBMS_OUTPUT.PUT_LINE(num || ' is even');
  ELSE
    DBMS_OUTPUT.PUT_LINE(num || ' is odd');
  END IF;
END;
/