require 'sinatra'

class Battle < Sinatra::Base
enable :sessions
set :session_secret, 'here be dragons'

  get "/" do
    erb :index
  end

  post "/names" do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @confirmation = session[:confirmation]
    erb :play
  end


  post "/attack" do
    session[:confirmation] = "Confirmation: You have attacked!"
    # reduce player points
    redirect '/play'
  end

  run! if app_file == $0
end
