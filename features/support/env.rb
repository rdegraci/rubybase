require 'rubygems'
require 'factory_girl'
require 'active_record'
require 'yaml'
require 'sqlite3'
require 'rspec'

require "#{File.dirname(__FILE__)}/../../spec/spec_helper"

Dir["#{File.dirname(__FILE__)}/../../lib/**/*.rb"].each { |f| require(f); puts "requiring #{f}" }


