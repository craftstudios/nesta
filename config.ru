require "sinatra"
require "logger"
require "rack/funky-cache"
require 'coderay'   
require 'rack/codehighlighter'
	
# use Rack::FunkyCache, :directory => Nesta::Config.cache_dir
# use Rack::FunkyCache, :directory => "public/cache"
use Rack::Codehighlighter, :coderay, :markdown => true, :element => "pre>code", :pattern => /\A:::(\w+)\s*(\n|&#x000A;)/i

# log_file = File.open('log/nesta_log', 'a+')
# # Don't buffer writes to this file. Recommended for development.
# log_file.sync = true
# logger = Logger.new(log_file)
# logger.level = Logger::DEBUG
# logger.debug "foo"

require "./app"
run Nesta::App