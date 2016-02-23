# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application


begin
  #to open the browser
  require 'launchy'
  Launchy.open("http://localhost:3000")
rescue LoadError
end
