require "rubygems"
require "bundler"
Bundler.setup

require 'octopi'
require 'sinatra/base'
require 'erb'

class Television < Sinatra::Base
  get '/' do
    authenticated_with :config => "github.yml" do
    end
    
    erb :index
  end
end
