# Create ssh config in ~/.ssh/config on client
file {'/etc/ssh/ssh_config':
  ensure => present,
}
-> file_line { '/etc/ssh/ssh_config':
  path => '/etc/ssh/ssh_config', 
  ensure => present,
  line => 'Host *',
}
-> file_line { '/etc/ssh/ssh_config':
  ensure => present,
  path => '/etc/ssh/ssh_config',
  line => '   IdentityFile ~/.ssh/holberton',
}
