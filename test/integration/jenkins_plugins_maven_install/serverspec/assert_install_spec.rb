require_relative '../../../kitchen/data/spec_helper'

describe file('/var/lib/jenkins/hudson.tasks.Maven.xml') do
  it { should exist }
  it { should be_file }
  it { should contain '<home>/usr/local/maven</home>' }
  it { should be_owned_by 'jenkins' }
end
