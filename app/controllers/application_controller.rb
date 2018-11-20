class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes' do
    # displays the list of recipes
    # with links to each recipe's show page
    erb :index
  end

  get '/recipes/:id' do
    # displays the recipe
    # with a button (in its own form) to delete the recipe
    erb :show
  end

  get '/recipes/:id/edit' do
    # displays the recipe and an edit form
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
    
  end

end
