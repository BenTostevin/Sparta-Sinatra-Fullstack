class FoodsController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  # Index
  get '/foods' do

    @foods = Food.all

    erb :'foods/index'
  end

  # New
  get '/foods/new' do
    @food = Food.new

    erb :'foods/new'
  end

  # Show
  get '/foods/:id' do

    id = params[:id]

    @food = Food.find id

    erb :'foods/show'
  end

  # Create
  post "/foods" do
    food = Food.new

    food.city = params[:city]
    food.country = params[:country]
    food.shopping = params[:shopping]

    food.save

    redirect '/foods'
  end

  # Update
  put '/foods/:id' do

    id = params[:id]
    food = Food.find id

    food.city = params[:city]
    food.country = params[:country]
    food.shopping = params[:shopping]

    food.save

    redirect '/foods'
  end

  # Destroy
  delete '/foods/:id'  do
    id = params[:id].to_i

    Food.destroy id

    redirect '/foods'
  end

  # Edit
  get '/foods/:id/edit'  do

    id = params[:id]

    @food = Food.find id

    erb :'foods/edit'
  end

end
