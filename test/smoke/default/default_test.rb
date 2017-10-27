# # encoding: utf-8

# Inspec test for recipe intercon::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe service('docker') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe docker_container('hello_world') do
  it { should exist }
  it { should be_running }
  its('image') { should eq 'nginx' }
end

describe command('curl http://localhost') do
  its('stdout') { should match(/Hello World/) }
end
