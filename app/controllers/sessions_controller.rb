# where login/logout/signup is housed

class SessionsController < ApplicationController

  get '/signup' do
    erb :'sessions/signup'
  end
  
  # allows the sign up button to work from welcome page
  post '/signup' do
    user = User.new(params[:user])
   
    if user.save
      #this line logs in the user:
      session[:user_id] = user.id
      redirect "/characters"
    else
      redirect "/signup"
    end
  end

  get '/logout' do
    session.clear 
    redirect '/signup'
  end

end