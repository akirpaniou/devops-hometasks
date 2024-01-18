node 'slave1.puppet' {
  file { '/var/www/html/index.html':
    ensure  => file,
    content => 'Static Site',
  }
}