class CharactersController < ApplicationController

  get '/characters/new' do
    erb :'characters/new'
  end

  post '/characters' do
   character = Character.new(params[:character])
  end
end