class Metacli

  def self.send_command(cmd)
    sh = Shell.new
    cli_dir = Rails.root.join("lib", "ruby-cli-skeleton")
    cli_file = "#{cli_dir}/ruby-cli-skeleton"
    result = (
      sh.system("cd #{cli_dir} && echo #{cmd}") | sh.system("ruby #{cli_file}") 
    ).to_s
    return result
  end

end

