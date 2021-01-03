class CharactersController < ApplicationController

  get '/characters' do
    @characters = Character.all
    erb :'/characters/index'
  end

  get '/characters/new' do
    erb :'characters/new'
  end

  get '/characters/:id' do
    @character = Character.find_by_id(params[:id])
    erb :'characters/show'
  end

  post '/characters' do
    character = Character.new(params[:character])
 
    if character.save
     redirect '/characters'
    else
     redirect '/characters/new'
    end
   end

  

  
end