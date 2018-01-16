require 'sinatra/base'

class Battle < Sinatra::Base
    enable :sessions

  get '/' do
    erb(:index)
  end

  get '/new_player' do
    erb(:new_player)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    p params
    p session
    p session[:player_1]
    p "Leaving names"
    redirect '/play'
  end

  get '/play' do
    p @player_1
    p session[:player_1]
    p session
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :play
  end
end
