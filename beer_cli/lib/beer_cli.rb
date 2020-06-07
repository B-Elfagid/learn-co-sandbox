
#appilication environment 

require 'colorize'
require 'bundler/setup'
Bundler.require(:default)

require_relative './beer_cli/cli.rb'
require_relative './beer_cli/api.rb'
require_relative './beer_cli/beer.rb'



#require "beer_cli/version"

#module BeerCli
  #class Error < StandardError; end
  # Your code goes here...
#end
