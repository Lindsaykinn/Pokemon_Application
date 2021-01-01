class SessionsController < ApplicationController

  get '/sessions/signup' do
    erb :'sessions/signup'
  end
  
  post '/signup' do
    "Hello World"
  end

end