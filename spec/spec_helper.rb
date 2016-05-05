require 'serverspec'
require 'docker'

set :backend, :docker

project_root = File.expand_path(File.join(__FILE__, '..', '..', 'docker'))

RSpec.configure do |c|
  c.before(:suite) do
    set :docker_image, Docker::Image.build_from_dir(project_root).id
  end
end
