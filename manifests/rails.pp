class ruby::rails {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'rails',
  }

  package { $required:
    ensure   => latest,
    provider => gem,
  }

}
