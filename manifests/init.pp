# Class: coffeelabs_package
# This class manages the installation of packages using Chocolatey on Windows.
class coffeelabs_package {
  $package_name = undef
  $provider     = 'chocolatey'
  $ensure       = 'present'

  if $package_name {
    package { $package_name:
      ensure   => $ensure,
      provider => $provider,
    }
  } else {
    notice('You must specify a package_name to install.')
  }
  file { 'C:/Temp/example.txt':
    ensure  => 'file',
    content => "This is a sample file managed by Puppet on Windows.\n",
  }
}
