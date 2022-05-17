alter table employees alter column birth_date type date
using to_date(birth_date, 'mm-dd-yyyy');

alter table employees alter column hire_date type date
using to_date( hire_date, 'mm-dd-yyyy');
 
select * from employees