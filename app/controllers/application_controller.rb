require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params["team"])

      params["team"]["members"].each do |hero|
        hero.name = params[:name]
      end
      erb :team
    end

end
