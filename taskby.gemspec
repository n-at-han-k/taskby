# coding: utf-8
lib = File.expand_path("../lib/", __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)
require "taskby/version"

Gem::Specification.new do |spec|
  spec.name = 'taskby'
  spec.version = Taskby::VERSION
  spec.licenses = %w(MIT)
  spec.authors = ['Nathan Kidd']
  spec.homepage = 'https://github.com/n-at-han-k/taskby'
  spec.description = 'This is a CLI program that extends taskwarrior with usefull tools'
  spec.summary = spec.description

  spec.metadata = {
    'bug_tracker_uri' => 'https://github.com/n-at-han-k/taskby/issues'
  }

  spec.files = %w(taskby.gemspec) + Dir["*.md", "bin/*", "lib/**/*.rb"]
  spec.executables = %w(taskby)
  spec.require_paths = %w(lib)
  spec.post_install_message = %q{
    __________________________________________________________
    ..........................................................

    Thank you for installing taskby.

    You can run `taskby help` to see a list of commands.
    Happy tasking!

    ..........................................................
    __________________________________________________________
  }

  spec.required_ruby_version = ">= 2.6.0"
  spec.required_rubygems_version = ">= 1.3.5"

  spec.add_dependency "thor", "~> 1.3.0"

  spec.add_development_dependency "bundler", ">= 1.0", "< 3"
  spec.add_development_dependency "rspec", "~> 3.3"
  spec.add_development_dependency "rubocop", "~> 0.61.1"
  spec.add_development_dependency "simplecov", "~> 0.16"
end
