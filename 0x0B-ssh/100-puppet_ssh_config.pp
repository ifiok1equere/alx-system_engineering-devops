# 100-puppet_ssh_config.pp

class ssh_config {
  file_line { 'Turn off passwd auth':
    ensure => present,
    path   => '/etc/ssh/sshd_config',
    line   => 'PasswordAuthentication no',
  }

  file_line { 'Declare identity file':
    ensure => present,
    path   => '/home/iwequer/.ssh/config',
    line   => 'IdentityFile ~/.ssh/school',
  }
}

include ssh_config
