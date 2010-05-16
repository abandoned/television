## Television
#
# The television ceaselessly radiates information.

require "rubygems"
require "bundler"
Bundler.setup

ROOT = File.expand_path(File.dirname(__FILE__) + '/..')

require "#{ROOT}/lib/patched_octopussy"
require "#{ROOT}/lib/television/version"
require "#{ROOT}/lib/television/config"
require "#{ROOT}/lib/television/server"
