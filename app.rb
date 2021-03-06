require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/attack.rb'


class Battle < Sinatra::Base
    enable :sessions

  get '/' do
    erb(:index)
  end

  get '/new_player' do
    erb(:new_player)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    Attack.run(@game.opponent_of(@game.current_turn))
    @game.switch_turn
    erb :attack
  end
end
