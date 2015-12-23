
task default: %w[test]

task :test do
  sh "rspec -r #{File.dirname(__FILE__)}/spec/spec_helper.rb"
  sh 'cucumber'
end




task :console do
  sh "irb -rubygems -I lib -r #{File.dirname(__FILE__)}/console/env.rb"
end


require 'standalone_migrations'
StandaloneMigrations::Tasks.load_tasks