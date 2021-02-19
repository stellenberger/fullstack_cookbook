class RecipesController < ApplicationController
  before_action :authenticat_user! 
  
  def index
    p current_user.recipes
  end

  def create
  end

  def update
  end

  def destroy
  end
end
