$mounts = $facts['mountpoints']

$mounts.each | String $mpname, Hash $mpinfo | {
  notice("Name : ${mpname}, Type: ${mpinfo['filesystem']}, Size: ${mpinfo['size']}")
}
