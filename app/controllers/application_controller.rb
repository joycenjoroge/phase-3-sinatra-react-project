class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  
  get '/' do
    erb :index
  end
  
  # Routes for User
  
  get '/users' do
    @users = User.all
    @users.to_json
  end
  
  get '/users/new' do
    erb :'users/new'
  end
  
  post '/users' do
    @user = User.create(params[:user])
    @user.to_json
  end
  
  get '/users/:id' do
    @user = User.find(params[:id])
    @user.to_json
  end
  
  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :'users/edit'
  end
  
  patch '/users/:id' do
    @user = User.find(params[:id])
    @user.update(params[:user])
    @user.to_json
  end
  
  delete '/users/:id' do
    @user = User.find(params[:id])
    @user.destroy
    { message: "User successfully deleted" }.to_json
  end
  
  # Routes for Recipe
  
  get '/recipes' do
    @recipes = Recipe.all
    @recipes.to_json
  end
  
  get '/recipes/new' do
    erb :'recipes/new'
  end
  
  post '/recipes' do
    @recipe = Recipe.create(params[:recipe])
    @recipe.to_json
  end
  
  get '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    @recipe.to_json
  end
  
  get '/recipes/:id/edit' do
    @recipe = Recipe.find(params[:id])
    erb :'recipes/edit'
  end
  
  patch '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    @recipe.update(params[:recipe])
    @recipe.to_json
  end
  
  delete '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    { message: "Recipe successfully deleted" }.to_json
  end

end
