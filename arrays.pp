# directory variable
$directory = "/tmp/ravi"

#files array
$filesrequired = [
  'ravi1',
  'ravi2',
  'ravi3',
  'ravi4',
  'ravi5',
  'ravi6',
]	

#permission hash
$mode = {
  'owner' => 'kiosk',
  'group' => 'kiosk',
  'mode'  => '0777',
}

file { $directory:
  ensure => directory,
}

$filesrequired.each | $myfile | {
  file { "$directory/$myfile":
  ensure => present,
  *      => $mode,
  }
}

file { '/tmp/kiosk':
  ensure => directory,
  *      => $mode,
}

$filesrequired.each | $kioskfile | {
  file { "/tmp/kiosk/${kioskfile}":
    ensure => present,
    *      => $mode,
  }
}
