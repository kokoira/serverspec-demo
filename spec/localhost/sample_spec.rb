require 'spec_helper'

describe port(22) do
  it { should be_listening }
end

describe port(80) do
  it { should be_listening }
end

describe package('nginx'), :if => os[:family] == 'amazon' do
  it { should be_installed }
end

describe package('git') do
  it { should be_installed }
end

describe command('ruby -v') do
  its(:stdout) { should match /ruby 2\.6\.3/ }
end

describe service('nginx') do
  it { should be_running }
end

describe file('/etc/nginx/nginx.conf') do
  it { should exist }
end

describe file('/var/log/nginx') do
  it { should exist }
end
