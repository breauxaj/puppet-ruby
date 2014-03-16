class ruby (
  $ensure = 'latest'
){
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [
      'ruby',
      'ruby-rdoc',
      'rubygems'
    ]
  }

  package { $required: ensure => $ensure }

}
