$location = '/tmp/ravikumar'

file { $location:
  ensure => directory,
}

$myfiles = lookup('ravifiles',Array)

$myfiles.each | $ravifile | {
  file { "${location}/${ravifile}":
    ensure => present,
  }
}
