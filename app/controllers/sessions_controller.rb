class SessionsController < ApplicationController

  get '/sessions/signup' do
    erb :'sessions/signup'
  end
  
  # allows the sign up button to work from welcome page
  post '/signup' do
    redirect "/sessions/signup"
  end


end