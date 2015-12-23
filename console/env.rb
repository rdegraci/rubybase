require 'yaml'
require 'sqlite3'
require 'active_record'

Dir["#{File.dirname(__FILE__)}/../lib/**/*.rb"].each { |f| require(f); puts "requiring #{f}" }

module ConsoleDatabaseLoader
  file_path = "#{File.dirname(__FILE__)}/../db/config.yml"
  # puts "file_path = #{file_path}"
  yaml = YAML.load_file file_path
  @@connection = ActiveRecord::Base.establish_connection(yaml["development"])
end