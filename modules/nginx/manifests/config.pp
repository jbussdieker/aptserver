class nginx::config inherits nginx {

  file { '/etc/nginx/nginx.conf':
    content => $config,
  }

}
