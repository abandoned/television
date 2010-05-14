require "rubygems"
require "bundler"
Bundler.setup

require "octopi"
require "sinatra/base"
require "erb"

class Television < Sinatra::Base
  include Octopi
  
  get "/" do
    authenticated_with :config => "github.yml" do
      #Repository.find_all(:user => config["github"]["login"])
    end
    
    erb :index
  end
end
