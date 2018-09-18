require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_text = params[:user_phrase]
    hello = PigLatinizer.new
    @done = hello.piglatinize(user_text)
    erb :piglatinizer
  end
end
