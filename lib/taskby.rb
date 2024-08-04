# frozen_string_literal: true

require "thor"
require "xdg"

class Taskby
  module Helpers
    include Thor::Actions

    def exit!(message)
      puts message
      Kernel.exit(1)
    end

    def yes_no(condition)
      if condition
        say("Yes", :green)
      else
        say("No", :red)
      end
    end
  end
end

require "taskby/cli"
require "taskby/version"
require "taskby/doctor"
