require 'sinatra/base'

require_relative '../../config/environment'

class App < Sinatra::Base

      set :views, Proc.new { File.join(root, "../views/") }

      get '/' do
          erb :super_hero
      end

      post '/teams' do
          @team = params["team"]
          @members = params["team"]["member"]
          erb :team
      end
  end
