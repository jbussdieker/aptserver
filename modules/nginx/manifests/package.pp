class nginx::package inherits nginx {

  package { 'nginx-common':
    ensure => '1.1.19-1ubuntu0.6',
  }

  package { 'nginx-full':
    ensure  => '1.1.19-1ubuntu0.6',
    require => Package['nginx-common'],
  }

  package { 'nginx':
    ensure  => '1.1.19-1ubuntu0.6',
    require => Package['nginx-full'],
  }

}
