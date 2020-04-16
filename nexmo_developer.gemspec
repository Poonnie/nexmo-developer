lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative "lib/nexmo_developer/version"

Gem::Specification.new do |spec|
  spec.name          = "nexmo-developer"
  spec.version       = NexmoDeveloper::VERSION
  spec.authors       = ["Nexmo DevRel"]
  spec.email         = ["devrel@nexmo.com"]
  spec.executables   << 'nexmo-developer'

  spec.summary       = %q{Nexmo Developer Platform}
  spec.homepage      = "https://github.com/Nexmo/nexmo-developer"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/Nexmo/nexmo-developer"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|_api|_code|_documentation|_examples|_extend|_modals|_open_api|_tutorials|_tutorials_tabbed_content|_use_cases|.repos)/}) }
  end
  spec.files         += Dir.glob('./lib/nexmo_developer/public/**/*', File::FNM_DOTMATCH)
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency('activeadmin', '~> 2.6')
  spec.add_runtime_dependency('rails', '~> 6.0')
  spec.add_runtime_dependency('bootsnap', '~> 1.4.6')
  spec.add_runtime_dependency('nexmo-oas-renderer', '~> 0.8.0')
  spec.add_runtime_dependency('nexmo_markdown_renderer', '~> 0.2.0')
  spec.add_runtime_dependency('activesupport', '~> 6.0')
  spec.add_runtime_dependency('bugsnag', '~> 6.13')
  spec.add_runtime_dependency('railties', '~> 6.0.2')
  spec.add_runtime_dependency('devise', '~> 4.7')
  spec.add_runtime_dependency('geocoder', '~> 1.6')
  spec.add_runtime_dependency('gravatar_image_tag', '~> 1.2')
  spec.add_runtime_dependency('greenhouse_io', '~> 2.5')
  spec.add_runtime_dependency('recaptcha', '~> 5.3')
  spec.add_runtime_dependency('split', '~> 3.4')
  spec.add_runtime_dependency('listen', '~> 3.2')
  spec.add_runtime_dependency('inherited_resources', '~> 1.11')
  spec.add_runtime_dependency('msgpack', '~> 1.3')
  spec.add_runtime_dependency('pg', '~> 1.2')
  spec.add_runtime_dependency('coffee-rails', '~> 5.0')
  spec.add_runtime_dependency('octokit', '~> 4.18')
  spec.add_runtime_dependency('icalendar', '~> 2.6')
  spec.add_runtime_dependency('diffy', '~> 3.3')
  spec.add_runtime_dependency('webpacker')
  spec.add_runtime_dependency('clipboard-rails')
  spec.add_runtime_dependency('gmaps4rails')
  spec.add_runtime_dependency('byebug')
end