# Run this with rackup
# Settings for rackup
#\ -p 9292

dev = ENV['RACK_ENV'] == 'development'

require 'rack/unreloader'

# Initialise the Unloader while passing the subclasses to unload
# every time it detects changes
Unreloader = Rack::Unreloader.new(:subclasses => %w'Roda'){Main}
Unreloader.require './main.rb'

# Pass the favicon.ico location
use Rack::Static, :urls => ['/favicon.ico']

run(dev ? Unreloader : Main)
