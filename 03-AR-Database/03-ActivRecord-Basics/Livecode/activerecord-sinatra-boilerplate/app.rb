require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require 'pry'

get "/" do
  @restaurants = Restaurant.all

  erb :index
end

get "/restaurants/:id" do
  id = params[:id]
  @restaurant = Restaurant.find(id)
  erb :show
end

# get '/restaurants/new' do

# end

post '/restaurants' do
  Restaurant.create(
    name: params[:name],
    city: params[:city],
    specialty: params[:specialty]
  )
  redirect '/'
end

post '/restaurants/:id/rate' do
  resto = Restaurant.find(params[:id])
  new_rate = params[:rating].to_i
  sum_rates = resto.average_rating * resto.number_of_ratings + new_rate
  resto.number_of_ratings += 1
  resto.average_rating = sum_rates.to_f / resto.number_of_ratings
  resto.save

  redirect "/restaurants/#{resto.id}"
end

# localhost:4567/restaurants/2
