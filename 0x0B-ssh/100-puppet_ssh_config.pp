# 100-puppet_ssh_config.pp

class ssh_config {
  include stdlib

  file_line { 'Turn off passwd auth':
    ensure => present,
    path   => '/home/iwequer/.ssh/config',  # Update the path to the client-side SSH config file
    line   => 'PasswordAuthentication no',
  }

  file_line { 'Declare identity file':
    ensure => present,
    path   => '/home/iwequer/.ssh/config',  # Update the path to the client-side SSH config file
    line   => 'IdentityFile ~/.ssh/school',
  }
}

include ssh_config
