node 'slave2.puppet' {
  file { '/var/www/html/index.php':
    ensure  => file,
    content => '<?php echo "Dynamic Site"; ?>',
  }
}