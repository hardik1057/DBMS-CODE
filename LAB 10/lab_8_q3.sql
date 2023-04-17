DECLARE 
  num1 NUMBER;
  num2 NUMBER;
  temp NUMBER;
BEGIN
  num1:= &num1_input;
  num2:= &num2_input;
  DBMS_OUTPUT.PUT_LINE('Before swapping:');
  DBMS_OUTPUT.PUT_LINE('num1 = ' || num1 || ', num2 = ' || num2);
  temp := num1;
  num1 := num2;
  num2 := temp;
  DBMS_OUTPUT.PUT_LINE('After swapping:');
  DBMS_OUTPUT.PUT_LINE('num1 = ' || num1 || ', num2 = ' || num2);
END;
/