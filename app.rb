require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    "Welcome to Battle!"
  end

  get '/new_player' do
    erb(:index)
  end

  post '/names' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:play)
  end
end
