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

  get '/login' do
    erb :'sessions/login'
  end

  post '/login' do
    # authenticate -> making sure user exists and making sure user is using the correct password
    user = User.find_by_username(params[:user][:username])

    # .authenticate is given by bcrypt gem
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect '/characters'
    else
      redirect '/login'
    end
  end

  get '/logout' do
    session.clear 
    redirect '/signup'
  end

  

end