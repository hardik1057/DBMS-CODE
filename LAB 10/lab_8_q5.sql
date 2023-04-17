DECLARE
  num1 INTEGER;
  num2 INTEGER;
  num3 INTEGER;
  max_num INTEGER;
BEGIN
  num1 := &num1_input;
  num2 := &num2_input;
  num3 := &num3_input;
  max_num := num1;
  IF num2 > max_num THEN
    max_num := num2;
  END IF;
  IF num3 > max_num THEN
    max_num := num3;
  END IF;
  DBMS_OUTPUT.PUT_LINE('The largest number is: ' || max_num);
END;
/