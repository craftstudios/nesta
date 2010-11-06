require "sinatra"

require "rack/funky-cache"
require 'coderay'   
require 'rack/codehighlighter'

# use Rack::FunkyCache, :directory => Nesta::Config.cache_dir
use Rack::FunkyCache, :directory => "public/cache"
use Rack::Codehighlighter, :coderay, :markdown => true, :element => "pre>code", :pattern => /\A:::(\w+)\s*(\n|&#x000A;)/i

require "./app"
run Nesta::App
