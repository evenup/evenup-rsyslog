require 'spec_helper'

describe 'rsyslog::service', :type => :class do

  it { should create_class('rsyslog::service') }
  it { should contain_service('rsyslog') }

end

