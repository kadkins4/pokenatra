# where the magic happens
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

#connect to db
require_relative 'db/connection.rb'

#Require models
require_relative 'models/pokemon/pokemon'
require_relative 'models/trainers/trainers'

get '/home' do
  @pokemons = Pokemon.all
  erb :"pokemon/home"
end

get '/home/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemon/show"
end
