###############plsql dbms print hai##########
SQL> set serveroutput on
SQL> begin
  2  dbms_output.Put_line('hai');
  3  end;
  4  /
hai

PL/SQL procedure successfully completed.

SQL> declareSQL> set serveroutput on
SP2-0734: unknown command beginning "declareSQL..." - rest of line ignored.
SQL> SQL> begin
SP2-0042: unknown command "SQL> begin" - rest of line ignored.
SQL>   2  dbms_output.Put_line('hai');
SQL>   3  end;
SQL>   4  /
SQL> hai
SP2-0042: unknown command "hai" - rest of line ignored.
SQL>
SQL> PL/SQL procedure successfully completed.
SP2-0734: unknown command beginning "PL/SQL pro..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL> declare
  2      var1 varchar(10);
  3         num1 int(30);
  4         begin
  5         var1:='hello';
  6         num1:=100;
  7         dbms_output.Put_line('var1:'||var1);
  8         dbms_output.Put_line('Num1:'||num1);
  9        end;
 10       /
var1:hello
Num1:100

PL/SQL procedure successfully completed.

SQL> set serveroutput on
SQL>  CREATE OR REPLACE PROCEDURE greetings
  2    AS
  3    BEGIN
  4       dbms_output.put_line('Hello World!');
  5    END;
  6    /

Procedure created.

SQL> create table Employees(eid int,fname varchar(30),salary int);

Table created.

SQL> insert into Employees values(100,'ram',30000);

1 row created.

SQL> declare
  2      name varchar(10);
  3      sal int(20);
  4      begin
  5      select fname,salary into name,sal from Employees where eid=100;
  6      dbms_output.Put_line('Name:'||name);
  7      dbms_output.Put_line('Salary:'||sal);
  8      end;
  9      /
Name:ram
Salary:30000

PL/SQL procedure successfully completed.

SQL>  declare
  2          name Employees.fname%TYPE;
  3          sal Employees.salary%TYPE;
  4          lname name%TYPE;
  5          begin
  6          select fname,salary into name,sal from Employees where eid=100;
  7          dbms_output.Put_line('Name:'||name);
  8          dbms_output.Put_line('Salary:'||sal);
  9          end;
 10      /
Name:ram
Salary:30000

PL/SQL procedure successfully completed.

SQL> set serveroutput on;
SQL>  declare
  2    num number := 6;
  3    fact number := 1;
  4    temp number;
  5    begin
  6    temp :=num;
  7    while( temp>0 )
  8    loop
  9    fact := fact*temp;
 10    temp := temp-1;
 11   end loop;
 12    dbms_output.put_line('factorial of '|| num || ' is ' || fact);
 13    end;
 14    /
factorial of 6 is 720

PL/SQL procedure successfully completed.

SQL> declare
  2    n number;
  3    fac number:=1;
  4    i number;
  5    begin
  6   n:=&n;
  7
  8    for i in 1..n
  9   loop
 10   fac:=fac*i;
 11    end loop;
 12   dbms_output.put_line('factorial='||fac);
 13   end;
 14    /
Enter value for n: 6
old   6:  n:=&n;
new   6:  n:=6;
factorial=720

PL/SQL procedure successfully completed.
