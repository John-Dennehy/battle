require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_1])
    $player2 = Player.new(params[:player_2])
    redirect "/play"
  end

  get "/attack" do
    @player_1 = $player1.name
    @player_2 = $player2.name
    erb :attack
  end

  get "/play" do
    @player_1 = $player1.name
    @player_2 = $player2.name
    erb :play
  end

  run! if app_file == $PROGRAM_NAME
end
