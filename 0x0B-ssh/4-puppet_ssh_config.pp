# Create ssh config in ~/.ssh/config on client
file_line { '/config3':
  path => '/home/ubuntu/.ssh/config',
  line => 'Host *',
}

file_line { '/config3':
  path => '/home/ubuntu/.ssh/config',
  line => '   IdentityFile ~/.ssh/holberton',
}
