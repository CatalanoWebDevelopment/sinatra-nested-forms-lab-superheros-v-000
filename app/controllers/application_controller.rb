require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      @team = Team.new(params["team"])

      params["team"]["members"].collect do |hero|
        SuperHero.new(hero)
      end

      @hero = SuperHero.all
binding.pry
      erb :team
    end

end
