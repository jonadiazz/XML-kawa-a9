for $a in doc("employees.xml")/all_employees/employee
where $a/city='Omaha'
order by $a/name
return $a/name