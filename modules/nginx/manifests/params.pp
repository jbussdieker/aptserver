class nginx::params {
  $config = template('nginx/nginx.conf.erb')
}
