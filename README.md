What is it?
===========

A puppet module that manages the rsyslog config.  It installs the basic config
provided by redhat and easily allows for additional facilities.  This module is
not intended to encompass all options of rsyslog but rather make it very easy
to configure local logging.


Usage:
------

Generic apache install
<pre>
  class { 'rsyslog': }
</pre>

Adding an additional facility for OpenLDAP
<pre>
  rsyslog::snippet { 'openldap':
    content => 'local4.*    -/var/log/openldap.log',
  }
</pre>


Known Issues:
-------------
Only tested on CentOS 6


License:
--------

Released under the Apache 2.0 licence


Contribute:
-----------
* Fork it
* Create a topic branch
* Improve/fix (with spec tests)
* Push new topic branch
* Submit a PR
