require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './models/Food.rb'
require_relative './controllers/foods_controller.rb'

use Rack::Reloader
use Rack::MethodOverride
run FoodsController
