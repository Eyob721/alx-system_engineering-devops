# Install flask from pip3
package { 'flask':
    ensure   => 'installed',
    name     => 'flask==2.1.0',
    provider => 'pip3',
}
