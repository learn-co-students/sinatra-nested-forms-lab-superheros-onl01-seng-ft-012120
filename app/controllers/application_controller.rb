require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :super_hero
    end

    

    post '/teams' do 
        @teamname = params[:team][:name]
        @teammotto = params[:team][:motto]
        @hero = params[:team][:heroes]
        # params[:team][:heroes].each do |details|
        #     Hero.new(details)
        # end
        # @hero = Hero.all
        erb :team 
    end

end
