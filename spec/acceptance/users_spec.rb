require 'spec_helper'

describe 'the root user' do
  let(:subject) { user('root') }
  it { is_expected.to exist }
  it { is_expected.to have_uid 0 }
  it { is_expected.to have_home_directory '/root' }
end
