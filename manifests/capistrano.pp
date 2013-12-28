class ruby::capistrano {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'capistrano',
  }

  package { $required:
    ensure   => latest,
    provider => gem,
  }

}
