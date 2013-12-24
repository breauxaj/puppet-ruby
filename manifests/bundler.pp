class ruby::bundler {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'bundler',
  }

  package { $required:
    ensure   => latest,
    provider => gem,
  }

}
