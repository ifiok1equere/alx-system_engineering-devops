# define the exec resource.
exec { 'pkill':
  command => 'pkill -f killmenow',
  path    => '/usr/bin',
}
