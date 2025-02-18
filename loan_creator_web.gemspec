
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "loan_creator_web/version"

Gem::Specification.new do |spec|
  spec.name          = "loan_creator_web"
  spec.version       = LoanCreatorWeb::VERSION
  spec.authors       = ["Juliette Audema"]
  spec.email         = ["juliette@capsens.eu"]

  spec.summary       = 'View for loan_creator gem'
  spec.homepage      = 'https://github.com/CapSens/loan-creator-web'
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency 'sinatra'
  spec.add_runtime_dependency 'loan_creator'
end
