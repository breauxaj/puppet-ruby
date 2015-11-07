class ruby::devel (
  $ensure = 'installed'
) inherits ::ruby::params {
  package { $::ruby::params::ruby_devel:
    ensure  => $ensure,
    require => Package[$::ruby::params::ruby_package]
  }

}
