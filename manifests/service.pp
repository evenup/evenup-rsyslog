# == Class: rsyslog::service
#
# This class manages the rsyslog service.  It should not be directly called.
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
class rsyslog::service {

  service { 'rsyslog':
    ensure  => 'running',
    enable  => true,
  }
}
