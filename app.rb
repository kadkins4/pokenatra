# where the magic happens
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

#connect to db
require_relative 'db/connection.rb'

#Require models
require_relative 'models/pokemon/pokemon'
require_relative 'models/trainer/trainer'

get '/home' do
  @pokemons = Pokemon.all
  erb :"pokemon/home"
end

get '/home/cablelink' do
  @trainers = Trainer.all
  erb :"trainer/cablelink"
end

post '/home/cablelink' do
  @trainer = Trainer.create(params[:name])
  redirect "/home/cablelink"
end

get "/home/cablelink/:id" do
  @trainer = Trainer.find(params[:id])
  erb :"trainer/edit_trainer"
end

get '/home/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemon/show"
end
