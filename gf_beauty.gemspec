
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gf_beauty/version"

Gem::Specification.new do |spec|
  spec.name          = "gf_beauty"
  spec.version       = GfBeauty::VERSION
  spec.authors       = ["Chinh Hoang"]
  spec.email         = ["Chinh.hoang@somotsoftvn.com"]

  spec.summary       = %q{xxxx}
  spec.description   = %q{xxxx}

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.files         = `git ls-files`.split("\n")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

# Gem::Specification.new do |s|
#   s.name        = "gf_beauty"
#   s.version       = GfBeauty::VERSION
#   s.summary     = "Gemfile Beautify"
#   s.description = "A simple gem which will beautify your Gemfile"
#   s.authors     = ["Tran Xuan Cho"]
#   s.email       = "xl@framgia.com"
#   s.files       = ["lib/gf_beauty.rb"]
#   s.bindir        = "exe"
#   s.executables << "gf_beauty"
#   s.homepage    = "https://maxhoang308.github.io"
# end
