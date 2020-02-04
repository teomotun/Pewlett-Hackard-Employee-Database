# A Mystery in Two Parts

![sql.png](EmployeeSQL/sql.png)

## Background

Carried out a research project on employees of the Hewlett Packard corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

I performed the following:

1. Data Modeling:
    Sketched out an ERD of the tables using [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

2. Data Engineering:
    Create a table schema for each of the six CSV files and imported each CSV file into the corresponding SQL table.

3. Data Analysis:
    Analyzed the data to get the following:

        1. employee number, last name, first name, gender, and salary for each employeee

        2. employees who were hired in 1986.

        3. manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

        4. department of each employee with the following information: employee number, last name, first name, and department name.

        5. employees whose first name is "Hercules" and last names begin with "B."

        6. employees in the Sales department, including their employee number, last name, first name, and department name.

        7. employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

        8. The frequency count of employee last names (how many employees share each last name) in descending order


As I examined the data, I was overcome with a creeping suspicion that the dataset is fake. To confirm my hunch, I decided to  generate a visualization of the data in jupyter notebook showing:

    1. Histogram of the most common salary ranges for employees.

    2. Bar chart of average salary by title.
