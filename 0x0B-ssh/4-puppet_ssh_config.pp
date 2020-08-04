# Create ssh config in ~/.ssh/config on client
file {'/etc/ssh/ssh_config':
  ensure => present,
}
-> file_line { '/config3':
  ensure => present,
  line => 'Host *',
}
-> file_line { '/config3':
  ensure => present,
  path => '/etc/ssh/ssh_config',
  line => '   IdentityFile ~/.ssh/holberton',
}
