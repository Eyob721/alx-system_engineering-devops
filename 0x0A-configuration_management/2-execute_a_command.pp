# A manifest that kills a process named killmenow
exec {'killmeknow':
    command  => 'pkill killmenow',
    provider => 'shell',
    onlyif   => 'pgrep killmenow'
}
