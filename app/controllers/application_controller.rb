require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views") }

    get "/" do 
        erb :super_hero
    end

    post "/teams" do
        @team = Team.new(params)
        @members = []
        params[:team][:members].each do |member|
            @members << Hero.new(member)
        end
        erb :team
    end

    # post "/pirates" do
    #     @pirate = Pirate.new(params)
    #     @ships = []
    #     params[:pirate][:ships].each do |ship|
    #       @ships << Ship.new(ship)
    #     end 
    #     erb :"pirates/show"
    #   end


end
