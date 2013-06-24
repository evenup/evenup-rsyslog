require 'spec_helper'

describe 'rsyslog', :type => :class do

  it { should create_class('rsyslog') }
  it { should contain_class('rsyslog::install') }
  it { should contain_class('rsyslog::config') }
  it { should contain_class('rsyslog::service') }

end

