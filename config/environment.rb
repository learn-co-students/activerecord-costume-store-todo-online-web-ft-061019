require "bundler/setup"

require "sinatra/activerecord"
require 'ostruct'
require 'date'

Bundler.require

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
# this above essentially does this below but grabs any additional ones instead of hardcoding:
# require_relative '../app/models/costumes'
# require_relative '../app/models/costume_store'
# require_relative '../app/models/haunted_house'

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)
