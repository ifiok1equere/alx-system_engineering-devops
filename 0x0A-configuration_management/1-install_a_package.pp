# define the package resource

# Install Python 3.8.10 using the package resource
package { 'python3.8':
  ensure => '3.8.10',
}

# Install Flask and Werkzeug using pip3
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

package { 'werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3',
}
