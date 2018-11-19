$myname=lookup('name',String)
$myage=lookup('age',Integer)
$mysex=lookup('sex',String)

notice("My name from hiera: ${myname}")
notice("My age from hiera is : ${myage}")
notice("Sex : ${mysex}")
