select "Employee_info".employee_number, last_name, first_name, sex
from "Employee_info"
join "Salaries"
on "Employee_info".employee_number = "Salaries".employee_number;


select first_name, last_name, hire_date
from "Employee_info"
where hire_date like '%1986';


select "Departments".department_number, department_name, "Dept_Managers".employee_number,
	first_name, last_name
from "Departments"
join "Dept_Managers"
on "Dept_Managers".department_number = "Departments".department_number
join "Employee_info"
on "Dept_Managers".employee_number = "Employee_info".employee_number;


select first_name, last_name, "Employee_info".employee_number, department_name 
from "Employee_info"
join "Departments"
on "Departments".department_name = "Departments".department_name;


select first_name, last_name, sex
from "Employee_info"
where first_name = 'Hercules' and last_name like 'B%';


select "Employee_info".employee_number, last_name, first_name, department_name
from "Employee_info"
join "Departments"
on "Departments".department_name = "Departments".department_name
where department_name = 'Sales'


select "Employee_info".employee_number, last_name, first_name, department_name
from "Employee_info"
join "Departments"
on "Departments".department_name = "Departments".department_name
where department_name = 'Sales' or department_name = 'Development'


Select last_name, count(last_name) as "name_count"
from "Employee_info"
group by last_name
order by "name_count" DESC;


