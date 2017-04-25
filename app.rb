require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    #if params[:user_phrase]
    PigLatinizer.new.to_pig_latin(params[:user_phrase])

  end

end
