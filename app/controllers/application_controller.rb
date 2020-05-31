require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @name = params[:team][:name]
        @motto = params[:team][:motto]
        @hero_name_one = params[:team][:members][0][:name]
        @hero_power_one = params[:team][:members][0][:power]
        @hero_bio_one = params[:team][:members][0][:bio]

        @hero_name_two = params[:team][:members][1][:name]
        @hero_power_two = params[:team][:members][1][:power]
        @hero_bio_two = params[:team][:members][1][:bio]

        @hero_name_three = params[:team][:members][2][:name]
        @hero_power_three = params[:team][:members][2][:power]
        @hero_bio_three = params[:team][:members][2][:bio]

# binding.pry
        erb :team
    end

end
