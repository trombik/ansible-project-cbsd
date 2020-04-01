require_relative "../spec_helper"

describe "example" do
  it_behaves_like "a host with all basic tools installed"
end

describe command "kldstat -n /boot/kernel/pf.ko" do
  its(:exit_status) { should eq 0 }
end

describe service "cbsdd" do
  it { should be_running }
end
