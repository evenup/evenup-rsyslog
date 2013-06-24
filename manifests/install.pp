# == Class: rsyslog::install
#
# This class installs rsyslog.  It should not be directly called.
#
#
# === Authors
#
# * Justin Lambert <mailto:jlambert@letsevenup.com>
#
#
# === Copyright
#
# Copyright 2013 EvenUp.
#
class rsyslog::install {

  package { 'rsyslog':
    ensure  => 'latest',
  }
}
