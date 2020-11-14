require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        set :views, "views"
        set :public_dir, "public"
    end

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @user_phrase = (params[:user_phrase])
        @piglatin = PigLatinizer.new
 
        erb :results
    end
end