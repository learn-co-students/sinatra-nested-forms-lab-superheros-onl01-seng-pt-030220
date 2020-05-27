require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:members]
      @superheroes = members.collect do |hero|
        SuperHero.new(name: hero[:name], power: hero[:power], bio: hero[:bio])
      end
      erb :team
    end

end
