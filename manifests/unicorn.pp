class ruby::unicorn {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'unicorn',
  }

  package { $required:
    ensure   => latest,
    provider => gem,
  }

}
