require 'pry'
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(arg:params[:team])
     #@team=Team.new(params[:team][:name],params[:team][:motto])
      params[:team][:members].each do |mem|
        @hero=Superhero.new(arg:mem)
      end
      @heros= Superhero.all

      erb :team
    end




end
