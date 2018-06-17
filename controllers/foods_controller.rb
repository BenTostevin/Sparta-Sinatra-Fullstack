class FoodsController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  # Index
  get '/foods' do

    erb :'foods/index'

  end

  # New
  get '/foods/new' do
    "NEW FOOD"
  end

  # Show
  get '/foods/:id' do
    id = params[:id]

    "SHOW FOOD #{ id }"
  end

  # Create
  post "/foods" do

  end

  # Update
  put '/foods/:id'  do

  end

  # Destroy
  delete '/foods/:id'  do

  end

  # Edit
  get '/foods/:id/edit'  do
    id = params[:id]
    "EDIT THE EXISTING FOOD #{ id }"
  end

end
