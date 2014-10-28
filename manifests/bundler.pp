class ruby::bundler (
  $ensure = 'installed'
){
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'bundler',
  }

  $depends = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [ 'rubygems' ],
  }

  package { $required:
    ensure   => $ensure,
    provider => gem,
    require  => Package[$depends]
  }

}
