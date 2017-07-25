# where the magic happens
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

#connect to db
require_relative 'db/connection.rb'

#Require models
require_relative 'models/pokemon'
