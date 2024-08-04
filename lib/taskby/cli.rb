class Taskby::Cli < Thor
  include Taskby::Helpers
  package_name "Taskby"

  # By default, Thor returns exit(0) when an error occurs.
  # See: https://github.com/rails/thor/issues/244
  def self.exit_on_failure?
    true
  end

  # Method here just in-case we want to do something before Thor starts
  def self.call(args)
    self.start(args)
  end

  desc 'version', 'Display the version of taskby installed'
  map '-v' => :version
  def version
    say "taskby #{Taskby::VERSION}"
  end


  desc 'doctor', 'Make sure taskby is ready to run'
  def doctor
    say 'Checking if taskwarrior is installed ==> '
    yes_no Taskby::Doctor.taskwarrior_installed?
  end

  desc "help [COMMAND]", "Describe available commands or one specific command"
  def help(command = nil, subcommand = false)
    if command
      if self.class.subcommands.include? command
        self.class.subcommand_classes[command].help(shell, true)
      else
        self.class.command_help(shell, command)
      end
    else
      self.class.help(shell, subcommand)
    end
  end
end
