class ruby::devel {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [ 'ruby-devel' ]
  }

  $depends = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [ 'ruby' ],
  }
  
  package { $required:
    ensure  => latest,
    require => Package[$depends],
  }

}
