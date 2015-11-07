let $employees := doc("all.xml")/EMPLOYEES
let $works := doc("all.xml")/WORK
let $company  := doc("all.xml")/COMPANIES

for $e in $employees/employee,
    $w in $works/works,
    $c in $company/company
where $e/city='Lincoln'
and $c/city='Omaha'
return distinct-values($e/name)