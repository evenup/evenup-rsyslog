# == Define: rsyslog::snippet
#
# Install a specific syslog stanza
#
#
# === Parameters
#
# [*content*]
#   String.  Content of the rsyslog config file
#
#
# === Examples
#
#   rsyslog::snippet { 'messages':
#     content => '*.info;mail.none;authpriv.none;cron.none        /var/log/messages',
#   }
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
define rsyslog::snippet (
  $content,
){

  file { "/etc/rsyslog.d/${name}.conf":
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0444',
    notify  => Class['rsyslog::service'],
    content => $content,
  }

}
