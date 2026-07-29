# Increases the Nginx open-file limit to handle concurrent requests
exec { 'increase-nginx-open-file-limit':
  command => '/bin/sed -i s/15/4096/ /etc/default/nginx',
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure => running,
  enable => true,
}
