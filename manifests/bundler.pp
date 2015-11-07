class ruby::bundler (
  $ensure = 'installed'
) inherits ::ruby::params {
  package { $::ruby::params::ruby_bundler:
    ensure   => $ensure,
    provider => gem,
    require  => Package[$::ruby::params::ruby_package]
  }

}
