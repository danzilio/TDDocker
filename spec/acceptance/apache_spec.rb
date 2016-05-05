require 'spec_helper'

describe 'a web server' do
  it 'should be installed and running' do
    expect(package('apache2')).to be_installed
    expect(process('apache2')).to be_running
    expect(port('80')).to be_listening
  end

  describe file('/etc/apache2/sites-enabled/000-default.conf') do
    it { is_expected.to be_symlink }
    its(:content) { is_expected.to match /DocumentRoot \/var\/www\/html/ }
  end
end
