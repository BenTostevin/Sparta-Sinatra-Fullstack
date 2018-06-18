class PlacesController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  # Index
  get '/places' do

    @places = Place.all

    erb :'places/index'
  end

  # New
  get '/places/new' do
    @place = Place.new

    erb :'places/new'
  end

  # Show
  get '/places/:id' do

    id = params[:id]

    @place = Place.find id

    erb :'places/show'
  end

  # Create
  post "/places/" do
    place = Place.new

    place.country_name = params[:country_name]
    place.currency = params[:currency]

    place.save

    redirect '/places'
  end

  # Update
  put '/places/:id' do

    id = params[:id]
    place = Place.find id

    place.country_name = params[:country_name]
    place.currency = params[:currency]

    place.save

    redirect '/places'
  end

  # Destroy
  delete '/places/:id'  do
    id = params[:id].to_i

    Place.destroy id

    redirect '/places'
  end

  # Edit
  get '/places/:id/edit'  do

    id = params[:id]

    @place = Place.find id

    erb :'places/edit'
  end

end
