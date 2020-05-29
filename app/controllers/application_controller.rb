require 'sinatra/base'
# require_relative './models/hero'
# require_relative './models/team'



class App < Sinatra::Base
set :views, Proc.new { File.join(root, "../views/") }

get '/' do
erb :new
end

post'/team' do
  @team = Team.new(params[:team])
  params[:team][:hero].each do |new_hero|
    Hero.new(new_hero)
  end
  @heroes = Hero.all
  erb :team
end

end
