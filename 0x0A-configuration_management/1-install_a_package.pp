# This code defines a package resource
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

