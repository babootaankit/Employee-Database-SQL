-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/rVSgfi
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

drop table "Departments";
CREATE TABLE "Departments" (
    "department_number" varchar   NOT NULL,
    "department_name" varchar   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "department_number"
     )
);

drop table "Employees";
CREATE TABLE "Employees" (
    "employee_number" varchar   NOT NULL,
    "department_number" varchar   NOT NULL
);

drop table "Dept_Managers";
CREATE TABLE "Dept_Managers" (
    "department_number" varchar   NOT NULL,
    "employee_number" varchar   NOT NULL
);

drop table "Employee_info";
CREATE TABLE "Employee_info" (
    "employee_number" varchar   NOT NULL,
    "employee_title" varchar   NOT NULL,
    "birth_date" varchar   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" varchar   NOT NULL
);

drop table "Salaries";
CREATE TABLE "Salaries" (
    "employee_number" varchar   NOT NULL,
    "salary" int   NOT NULL
);

drop table "Titles";
CREATE TABLE "Titles" (
    "title_id" varchar   NOT NULL,
    "title" varchar   NOT NULL
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_department_number" FOREIGN KEY("department_number")
REFERENCES "Departments" ("department_number");

ALTER TABLE "Dept_Managers" ADD CONSTRAINT "fk_Dept_Managers_department_number" FOREIGN KEY("department_number")
REFERENCES "Departments" ("department_number");

