# Increases the Nginx worker connection limit to handle concurrent requests
exec { 'increase-nginx-worker-connections':
  command => '/bin/sed -i s/15/4096/ /etc/nginx/nginx.conf',
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure => running,
  enable => true,
}
