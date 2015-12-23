require 'rubygems'

require 'active_record'
require 'factory_girl'
require 'yaml'
require 'sqlite3'

Dir["#{File.dirname(__FILE__)}/../lib/**/*.rb"].each { |f| require(f) }
Dir["#{File.dirname(__FILE__)}/factories/**/*.rb"].each { |f| require(f) }

# when not using active record, redefine Object#save! 
# class Object
#   def save!
#     return true
#   end
# end


RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end


module RSpecDatabaseLoader
  file_path = "#{File.dirname(__FILE__)}/../db/config.yml"
  # puts "file_path = #{file_path}"
  yaml = YAML.load_file file_path
  @@connection = ActiveRecord::Base.establish_connection(yaml["test"])
  load "#{File.dirname(__FILE__)}/../db/schema.rb"
end