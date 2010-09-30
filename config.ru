ENV['RACK_ENV'] = "development"

require "rubygems"
require "sinatra"
require "./app"

run Sinatra::Application
