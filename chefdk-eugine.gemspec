# encoding: UTF-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chefdk/eugine/version'

Gem::Specification.new do |gem|
  gem.name          = 'chefdk-eugine'
  gem.version       = ChefDK::Eugine::VERSION
  gem.authors       = ['HealthOps']
  gem.email         = ['devops-tech-team@nsmtp.kp.org']
  gem.license       = 'Apache-2.0'
  gem.summary       = 'Dr. Eugine HealthyDev'
  gem.description   = 'HealthOps with Dr. Eugine!'
  gem.homepage      = 'https://stash.kp.org/dop/dreugine.git'
  gem.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  gem.require_paths = ['lib']
  gem.post_install_message = <<-EOF
    Add the lines below into your ~/.chef/config.rb or knife.rb file:

    if defined?(ChefDK::CLI)
      require 'chefdk/eugine'
      chefdk.generator_cookbook ChefDK::Eugine.path
    end
  EOF
end
