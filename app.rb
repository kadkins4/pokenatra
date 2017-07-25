# where the magic happens
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

#connect to db
require_relative 'db/connection.rb'

#Require models
require_relative 'models/pokemon'

get '/' do
  
end

binding.pry
