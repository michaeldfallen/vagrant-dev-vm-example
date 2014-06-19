File { backup => main }

Exec { path => "/usr/bin:/usr/sbin/:/bin:/sbin" }

node default {
  exec { "apt-update":
    command => "/usr/bin/apt-get update"
  }

  Exec["apt-update"] -> Package <| |>

  #Install system packages
  $system_packages = [
    git,
    vim,
    openjdk-7-jdk,
    curl,
    unzip
  ]
  package { $system_packages: ensure => installed }

}
