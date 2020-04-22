# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "rb_47"
  spec.version       = '1.0'
  spec.authors       = ["Your name here"]
  spec.email         = ["youremail@yourdomain.com"]
  spec.summary       = %q{Short summary of project}
  spec.description   = %q{Longer description of project}
  spec.homepage      = "https://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/rb_47.rb']
  spec.executables   = ['bin/rb_47']
  spec.test_files    = ['tests/test_rb_47.rb']
  spec.require_paths = ["lib"]
end
