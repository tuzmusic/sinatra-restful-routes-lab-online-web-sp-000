class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end

  get '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    erb :show
  end

  get '/recipes/:id/edit' do
    @recipe = Recipe.find(params[:id])
    erb :edit
  end

  patch '/recipes/:id' do
    # edits the recipe
    # and shows the edited recipe
  end

  get '/recipes/new' do
    # presents a form for creating a new recipe
    erb :create
  end

  post '/recipes' do
    # creates a new recipe
    # and shows the new recipe
  end

  get '/recipes/:id/edit' do
    # shows the current recipe
    # and shows a form to edit a recipe
    erb :edit
  end

  patch '/recipes/:id' do
    # updates the recipe object
    # and shows the recipe
  end

end
