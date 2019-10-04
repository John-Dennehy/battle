require_relative 'lib/player'
require_relative 'lib/game'
require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p1 = Player.new(params[:player_1])
    p2 = Player.new(params[:player_2])
    $game = Game.new(p1, p2)
    redirect "/play"
  end

  get "/attack" do
    $game.attack($game.p2)
    erb :attack
  end

  get "/play" do
    @player_1 = $game.p1.name
    @player_2 = $game.p2.name
    erb :play
  end

  run! if app_file == $PROGRAM_NAME
end
