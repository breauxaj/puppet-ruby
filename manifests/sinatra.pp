class ruby::sinatra {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'sinatra',
  }

  package { $required:
    ensure   => latest,
    provider => gem,
  }

}
