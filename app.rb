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

get '/home/trainer_home' do
  @trainers = Trainer.all
  erb :"trainer/trainer_home"
end

post '/home/create_trainer' do
  @trainer = Trainer.create(params[:trainer])
  redirect "/home/trainer_home/#{@trainer.id}"
end

get "/home/trainer_home/:id" do
  @trainer = Trainer.find(params[:id])
  erb :"trainer/edit_trainer"
end

get '/home/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemon/show"
end
