# configure ssh with puppet

# Declare a class for managing SSH configuration
class ssh_config {
  # Ensure the SSH config file exists
  file { '/home/iwequer/.ssh/config':
    ensure => present,
  }

  # Manage a specific line in the SSH config file to turn off password authentication
  file_line { 'Turn off passwd auth':
    path  => '/home/iwequer/.ssh/config',
    line  => 'PasswordAuthentication no',
    match => '^#?PasswordAuthentication',
  }

  # Manage another line in the SSH config file to declare the identity file
  file_line { 'Declare identity file':
    path  => '/home/iwequer/.ssh/config',
    line  => 'IdentityFile ~/.ssh/school',
    match => '^#?IdentityFile',
  }
}

# Include the ssh_config class to apply the configuration
include ssh_config
