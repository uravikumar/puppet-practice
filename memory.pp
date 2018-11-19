$total_memory = $facts['memory']['system']['total']
$available_memory = $facts['memory']['system']['available']

notice("Total memory on the system is ${total_memory}")
notice("Available memory on the system is ${available_memory}")
