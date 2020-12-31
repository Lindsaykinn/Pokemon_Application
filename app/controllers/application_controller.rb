require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome

    helpers do
      def is_logged_in?
        !!session[:user_id]
      end
    end
  end

  

end
