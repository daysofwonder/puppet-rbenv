# == Class: rbenv::params
#
# This class manages per-osfamily rbenv settings and should *not* be called directly.
#
# === Authors
#
# Justin Downing <justin@downing.us>
#
# === Copyright
#
# Copyright 2013 Justin Downing
#
class rbenv::params {
  case $::osfamily {
    'Debian': {
      $group = 'adm'
    }
    'RedHat': {
      $group = 'wheel'
    }
    'Suse': {
      $group = 'users'
    }
    'Darwin': {
      $group = 'admin'
    }
    default: {
      fail("The rbenv module doesn't support ${::osfamily}, it currently only suports Debian, RedHat, and Suse.")
    }
  }
}
