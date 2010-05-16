require "sinatra/base"
require "erb"

class Television 
  class Server < Sinatra::Base
    set :views,  "#{ROOT}/lib/television/views"
    set :public, "#{ROOT}/lib/television/public"

    get "/" do
      erb :index
    end

    helpers do
      def github
        Config.github
      end
    end
  end
end
