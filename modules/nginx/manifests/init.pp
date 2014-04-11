class nginx($config = $nginx::params::config) inherits nginx::params {

  class { 'nginx::package':
    notify => Class['nginx::service'],
  }

  class { 'nginx::config':
    require => Class['nginx::package'],
    notify  => Class['nginx::service'],
  }

  class { 'nginx::service':
    require => Class['nginx::config'],
  }

}
