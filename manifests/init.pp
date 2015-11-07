class ruby (
  $ensure = 'installed'
) inherits ::ruby::params {
  package { $::ruby::params::ruby_package:
    ensure  => $ensure,
  }

}
