require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './models/Food.rb'
require_relative './controllers/foods_controller.rb'

require_relative './models/Place.rb'
require_relative './controllers/places_controller.rb'

use Rack::Reloader
use Rack::MethodOverride

run Rack::Cascade.new([
  FoodsController,
  PlacesController
  ])
