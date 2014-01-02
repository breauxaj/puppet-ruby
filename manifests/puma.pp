class ruby::puma {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'puma',
  }

  package { $required:
    ensure   => latest,
    provider => gem,
  }

}
