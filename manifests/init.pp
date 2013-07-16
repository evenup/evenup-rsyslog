# == Class: rsyslog
#
# This class installs and configures rsyslog.
#
#
# === Examples
#
# * Installation:
#     class { 'rsyslog': }
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
class rsyslog(
  $rate_limit_interval  = 5,
  $rate_limit_burst     = 200,
) {

  class { 'rsyslog::install': }
  class { 'rsyslog::config': }
  class { 'rsyslog::service': }

  # Containment
  anchor { 'rsyslog::begin': }
  anchor { 'rsyslog::end': }

  Anchor['rsyslog::begin'] ->
  Class['rsyslog::install'] ->
  Class['rsyslog::config'] ->
  Class['rsyslog::service'] ->
  Anchor['rsyslog::end']

}
