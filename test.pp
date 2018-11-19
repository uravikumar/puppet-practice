$createfile = false

if $createfile {
  file {'/tmp/createfile.txt':
    ensure  => present,
    content => 'Hello world',
  }
}
else {
  file {'/tmp/createfile.txt':
    ensure => absent,
  }
}

