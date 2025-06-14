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
    fail('You must specify a package_name to install.')
  }
}
