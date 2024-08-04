# frozen_string_literal: true

lib = File.expand_path("../lib/", __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)
require "taskby/version"

Gem::Specification.new do |spec|
  spec.name = "taskby"
  spec.version = Taskby::VERSION
  spec.licenses = %w[MIT]
  spec.authors = ["Nathan Kidd"]
  spec.homepage = "https://github.com/n-at-han-k/taskby"
  spec.description = "Extending taskwarrior with useful tools."
  spec.summary = spec.description

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/n-at-han-k/taskby/issues",
    "rubygems_mfa_required" => "true"
  }

  spec.files = %w[taskby.gemspec] + Dir["*.md", "bin/*", "lib/**/*.rb"]
  spec.executables = %w[taskby]
  spec.require_paths = %w[lib]
  spec.post_install_message = %q{
    __________________________________________________________
    ..........................................................

    Thank you for installing taskby.

    You can run `taskby help` to see a list of commands.
    Happy tasking!

    ..........................................................
    __________________________________________________________
  }

  spec.required_ruby_version = ">= 2.7.0"
  spec.required_rubygems_version = ">= 1.3.5"

  spec.add_dependency "thor", "~> 1.3.0"
  spec.add_dependency "xdg", "~> 8.5"
end
