require 'sinatra'

class Battle < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/names" do
    @player1 = params[:player1]
    @player2 = params[:player2]
    @players = params
    erb :play
  end

  run! if app_file == $0
end
