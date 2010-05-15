require "rubygems"
require "bundler"
Bundler.setup

require "octopussy"
require "sinatra/base"
require "erb"

class Television < Sinatra::Base
  
  get "/" do
    authenticated_with :config => "github.yml" do
      #Repository.find_all(:user => config["github"]["login"])
    end
    
    erb :index
  end
end
