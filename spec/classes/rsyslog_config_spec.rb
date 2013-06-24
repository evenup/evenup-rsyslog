require 'spec_helper'

describe 'rsyslog::config', :type => :class do

  it { should create_class('rsyslog::config') }
  it { should contain_file('/etc/rsyslog.conf') }
  it { should contain_file('/etc/rsyslog.d').with_purge(true) }

end
