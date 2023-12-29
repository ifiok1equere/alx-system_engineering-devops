# config ssh with puppet

class ssh_config {
  file { '/home/iwequer/.ssh/config':
    ensure  => present,
    content => "Host  *\n    HostName 34.227.94.114\n    User ubuntu\n    IdentityFile ~/.ssh/school\n    IdentitiesOnly yes\n    PasswordAuthentication no\n",
  }
}

include ssh_config
