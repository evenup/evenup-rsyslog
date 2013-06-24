require 'spec_helper'

describe 'rsyslog::snippet', :type => :define do
  let(:title) { 'facility' }
  let(:params) { { :content => 'blah' } }

  it { should contain_file('/etc/rsyslog.d/facility.conf') }

end

