class CharactersController < ApplicationController

  get '/characters' do
    redirect_if_not_logged_in

    @characters = current_user.characters
    @character = Character.find_by_id(session[:character_id])
    erb :'/characters/index'
  end

  get '/characters/new' do
    redirect_if_not_logged_in
    erb :'characters/new'
  end

  get '/characters/:id' do
    redirect_if_not_logged_in
    find_character
    redirect_if_not_owner
    #will create a cookie if character is found 
    session[:character_id] = @character.id if @character
    redirect "/characters/new" unless @character
    erb :'characters/show'
  end

  get '/characters/:id/edit' do
    redirect_if_not_logged_in
    find_character 
    redirect_if_character_not_found
    redirect_if_not_owner
    erb :'characters/edit'
    end

  post '/characters' do
    #allows program to add characters for the user that is logged in and all users (.build is an ActiveRecord association method that we can call):
    character = current_user.characters.build(params[:character])
    if character.save
     redirect '/characters'
    else
     redirect '/characters/new'
    end
   end

   patch '/characters/:id' do
    find_character
    redirect_if_character_not_found
    
    if @character.update(params[:character])
      redirect "/characters/#{@character.id}"
    else
      redirect "/characters/#{@character.id}/edit"
    end
  end

  delete '/characters/:id' do
    find_character
    redirect_if_character_not_found
    redirect_if_not_owner
    @character.destroy
    redirect "/characters"
  end

 
private
def find_character
  @character = Character.find_by_id(params[:id])
end

def redirect_if_character_not_found
  redirect "/characters" unless @character
end

def redirect_if_not_owner
  redirect "/characters" unless @character.user == current_user
end


  
end