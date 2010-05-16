## Television
#
# The television ceaselessly radiates information.

require "rubygems"
require "bundler"
Bundler.setup

class Television
  class << self
    def root
      @root ||= File.expand_path(File.dirname(__FILE__) + '/..')
    end
  end
end

require "#{Television.root}/lib/patched_octopussy"
require "#{Television.root}/lib/television/version"
require "#{Television.root}/lib/television/config"
require "#{Television.root}/lib/television/server"
