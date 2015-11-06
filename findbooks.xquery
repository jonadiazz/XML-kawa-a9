for $x in doc("books.xml")/bookstore/book
where $x/price>30
order by $x/title
return $x/title
