task :default => :install

desc "Install the dot files into user's home directory"
task :install do
  manifest.each do |file|
    source, file = file, File.basename(file)

    puts "linking ~/.#{file}"
    system %Q{rm -rf "$HOME/.#{file}"}
    system %Q{ln -s "$PWD/#{source}" "$HOME/.#{file}"}
  end
end

desc "List untracked dot files"
task :untracked do
  unless File.exists?(File.expand_path('~/.Ignore'))
    system %Q{ln -s $PWD/Ignore $HOME/.Ignore}
  end
  sh "cd $HOME && find .* ! -type l -maxdepth 0 | grep -v -f .Ignore"
end

desc "Backup existing dotfiles"
task :backup do
  manifest.each do |file|
    file = File.basename(file)
    full_path = File.expand_path("#{ENV['HOME']}/.#{file}")
    if File.exists?(full_path) && !File.symlink?(full_path)
      puts "backing up ~/.#{file}"
      system %Q{mv "$HOME/.#{file}" "$HOME/.#{file}.bk"}
    end
  end
end

desc "Restore backup dotfiles"
task :rollback do
  manifest.each do |file|
    file = File.basename(file)
    backup_path = File.expand_path("#{ENV['HOME']}/.#{file}.bk")
    if File.exists?(backup_path)
      puts "reverting ~/.#{file}"
      system %Q{rm -rf "$HOME/.#{file}"}
      system %Q{mv "$HOME/.#{file}.bk" "$HOME/.#{file}"}
    end
  end
end

def manifest
  files = Dir['*']
  files -= %w(Rakefile README.md)
  files.sort
end
