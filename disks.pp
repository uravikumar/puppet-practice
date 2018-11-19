$hdd = $facts['disks']

$hdd.each | String $disk_name, Hash $values | {
  notice("Disk name : ${disk_name}, Size ${values['size']}")
}
