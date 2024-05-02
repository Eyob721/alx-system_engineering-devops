# A simple manifest that creates a file in /tmp
file { 'hello-puppet':
    ensure  => 'file',
    path    => '/tmp/school',
    mode    => '0744',
    owner   => 'www-data',
    group   => 'www-data',
    content => 'I love Puppet',
}
