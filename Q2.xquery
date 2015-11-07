let $employees := doc("all.xml")/EMPLOYEES
let $works := doc("all.xml")/WORK
let $company  := doc("all.xml")/COMPANIES

for $e in $employees/employee,
    $w in $works/works,
    $c in $company/company
where $e/city=$c/city
return distinct-values($w/salary)