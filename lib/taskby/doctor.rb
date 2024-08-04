# frozen_string_literal: true

class Taskby::Doctor
  class << self
    def taskwarrior_installed?
      Kernel.system('type task > /dev/null')
    end
  end
end
