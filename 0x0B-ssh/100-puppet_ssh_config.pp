$ssh_path='/etc/ssh/ssh_config'

file_line { 'Turn off passwd auth':
    ensure => present,
    path   => $ssh_path,
    line   => 'PasswordAuthentication no',
}

file_line { 'Declare identity file':
    ensure => present,
    path   => $ssh_path,
    line   => 'IdentityFile ~/.ssh/school',
}
