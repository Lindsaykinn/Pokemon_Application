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

  get '/characters/:id/edit' do
    find_character
    redirect_if_character_not_found
    erb :'characters/edit'
    end

  post '/characters' do
    character = Character.new(params[:character])
 
    if character.save
     redirect '/characters'
    else
     redirect '/characters/new'
    end
   end

   patch '/characters/:id' do
    find_character

    if @character.update(params[:character])
      redirect "/characters/#{@character.id}"
    else
      redirect "/characters/#{@character.id}/edit"
    end
  end

 
private
def find_character
  @character = Character.find_by_id(params[:id])
end

def redirect_if_character_not_found
  redirect "/characters" unless @character
end

  
end