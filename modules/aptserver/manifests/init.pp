class aptserver($root = $aptserver::params::root) inherits aptserver::params {

  class { 'nginx':
    config => template('aptserver/nginx.conf.erb'),
  }

  file { $root:
    ensure => directory,
  }

  file { "${root}/dists":
    ensure => directory,
  }

  file { "${root}/pool":
    ensure => directory,
  }

  file { "${root}/build.sh":
    ensure  => present,
    mode    => 0755,
    content => template('aptserver/build.sh.erb'),
  }

}
