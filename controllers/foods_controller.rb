class FoodsController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  # Index
  get '/foods' do
    "INDEX for FOODS"
  end

  # New
  get '/foods/new' do
    "NEW FOOD"
  end

  # Show
  get '/foods/:id' do
    # line below makes it so that you can call the id
    id = params[:id].to_i

    "SHOW FOOD #{ :id }"
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
    id = params[:id].to_i
    "EDIT THE EXISTING FOOD #{ :id }"
  end

end
