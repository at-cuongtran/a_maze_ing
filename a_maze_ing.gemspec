# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "a_maze_ing/version"

Gem::Specification.new do |spec|
  spec.name          = "a_maze_ing"
  spec.version       = AMazeIng::VERSION
  spec.authors       = ["gt-cuongtran"]
  spec.email         = ["cuong.tran.asiantech@gmail.com"]

  spec.summary       = 'maze solving game'
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  # spec.homepage      = "public repo URL."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  # spec.bindir        = "bin"
  spec.executables   = "a_maze_ing"
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "gosu","~> 0.12.0"
end
