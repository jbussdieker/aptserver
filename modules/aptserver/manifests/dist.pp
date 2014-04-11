define aptserver::dist() {

  # DIST
  file { "${aptserver::root}/dists/${title}":
    ensure => directory,
  }

  file { "${aptserver::root}/dists/${title}/main":
    ensure => directory,
  }

  file { "${aptserver::root}/dists/${title}/main/binary-all":
    ensure => directory,
  }

  file { "${aptserver::root}/dists/${title}/main/binary-amd64":
    ensure => directory,
  }

  file { "${aptserver::root}/dists/${title}/main/binary-i386":
    ensure => directory,
  }


  # POOL
  file { "${aptserver::root}/pool/${title}":
    ensure => directory,
  }

}
