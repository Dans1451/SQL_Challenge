select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
from employees
join salaries 
	on employees.emp_no = salaries.emp_no;

select employees.first_name, employees.last_name, employees.hire_date from employees
where hire_date >= '01-01-1986' and hire_date < '01-01-1987';

select dept_managers.dept_no, departments.dept_name, dept_managers.emp_no, employees.last_name, employees.first_name
from dept_managers
join employees
	on dept_managers.emp_no = employees.emp_no
join departments
	on dept_managers.dept_no = departments.dept_no;

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
	on employees.emp_no = dept_emp.emp_no
join departments
	on departments.dept_no = dept_emp.dept_no;

select first_name, last_name, sex from employees where first_name = 'Hercules' and last_name like 'B%'

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
	on employees.emp_no = dept_emp.emp_no
join departments
	on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales';

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
	on employees.emp_no = dept_emp.emp_no
join departments
	on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales'or departments.dept_name = 'Development';

select employees.last_name, count(employees.last_name) as total_names
	from employees
group by employees.last_name
order by total_names desc;
