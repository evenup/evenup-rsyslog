# == Class: rsyslog::config
#
# This class configures rsyslog.  It should not be directly called.
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
class rsyslog::config {

  file { '/etc/rsyslog.conf':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0444',
    notify  => Class['rsyslog::service'],
    source  => 'puppet:///modules/rsyslog/rsyslog.conf',
  }

  file { '/etc/rsyslog.d':
    ensure  => 'directory',
    owner   => 'root',
    group   => 'root',
    mode    => '0555',
    purge   => true,
  }

  # Basic redhat statements
  rsyslog::snippet { 'messages':
    content => '*.info;mail.none;authpriv.none;cron.none        /var/log/messages',
  }

  rsyslog::snippet { 'secure':
    content => 'authpriv.*        /var/log/secure',
  }

  rsyslog::snippet { 'mail':
    content => 'mail.*        -/var/log/maillog',
  }

  rsyslog::snippet { 'cron':
    content => 'cron.*        /var/log/cron',
  }

  rsyslog::snippet { 'spooler':
    content => 'uucp,news.crit        /var/log/spooler',
  }

  rsyslog::snippet { 'boot':
    content => 'local7.*        /var/log/boot.log',
  }

}
