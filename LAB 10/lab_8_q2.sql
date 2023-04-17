DECLARE
  RADIUS NUMBER;
  PI CONSTANT NUMBER := 3.14;
  AREA NUMBER;
BEGIN
  RADIUS := &radius_input;
  AREA := PI * RADIUS * RADIUS;
  DBMS_OUTPUT.PUT_LINE('The area of the circle is: ' || AREA);
END;
/