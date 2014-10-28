class ruby::devel (
  $ensure = 'installed'
){
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [ 'ruby-devel' ]
  }

  $depends = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [ 'ruby' ],
  }

  package { $required:
    ensure  => $ensure,
    require => Package[$depends],
  }

}
