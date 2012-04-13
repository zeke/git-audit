# This script traverses the given directory in search of repos with unstaged or unpushed local changes.

abort "Please specify a base directory, e.g. `ruby git_audit.rb ~/projects" unless ARGV.first

basedir = ARGV.first.sub(/\/$/, '')

repos = %x[find #{basedir} -name '*.git' -type d | sort].split("\n")

repos.each do |repo|
  repo = repo.sub(/\.git$/, '')
  
  status = %x[cd #{repo}; git status]
  # puts status

  if status =~ /working directory clean/
    
  else
    puts repo
    # puts status
    # puts "\n\n"
  end

end