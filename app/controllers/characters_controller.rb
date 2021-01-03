class CharactersController < ApplicationController

  get '/characters' do
    @characters = Character.all
    erb :'/characters/index'
  end
  get '/characters/new' do
    erb :'characters/new'
  end

  post '/characters' do
   character = Character.new(params[:character])

   if character.save
    redirect_to '/characters'
   else
    redirect_to '/characters/new'
   end
  end
end