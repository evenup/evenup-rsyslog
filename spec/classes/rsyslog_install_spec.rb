require 'spec_helper'

describe 'rsyslog::install', :type => :class do

  it { should create_class('rsyslog::install') }
  it { should contain_package('rsyslog') }

end

