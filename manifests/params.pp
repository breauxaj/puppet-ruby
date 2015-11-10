class ruby::params {
  case $::osfamily {
    'redhat': {
      case $::lsbmajdistrelease {
        '7': {
          $ruby_bundler = 'bundler'

          $ruby_devel   = [
            'ruby-devel',
            'rubygems-devel'
          ]

          $ruby_package = [
            'ruby',
            'rubygems'
          ]
        }
        default: {
          $ruby_bundler = 'bundler'

          $ruby_devel   = [
            'ruby-devel',
            'rubygems-devel'
          ]

          $ruby_package = [
            'ruby',
            'ruby-rdoc',
            'rubygems'
          ]
        }
      }
    }
    default: { }
  }

}
