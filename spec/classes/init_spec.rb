require 'spec_helper'
describe 'yum_plugin_s3' do

  context 'with defaults for all parameters' do
    it { should contain_class('yum_plugin_s3') }
  end
end
