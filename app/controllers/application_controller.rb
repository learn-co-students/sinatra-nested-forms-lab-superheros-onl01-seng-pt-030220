require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do #<--root of the directory- i think.. but in the address bar: blah.com/ 
        erb :new #<--render VIEWS/NEW.ERB
    end

    post '/team' do
      @team = params[:team]
        erb :team
    end

end
