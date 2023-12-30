# use puppet to configure ssh

file_line { 'Turn off passwd auth':
    path  => '/home/iwequer/.ssh/config',
    line  => '    PasswordAuthentication no',
    match => '^.*PasswordAuthentication.*',
}

file_line { 'Declare identity file':
    path  => '/home/iwequer/.ssh/config',
    line  => '    IdentityFile ~/.ssh/school',
    match => '^.*IdentityFile.*',
}
