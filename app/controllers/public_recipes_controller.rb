class PublicRecipesController < ApplicationController
  before_action :authenticate_user!

  def index
    @public_recipes = Recipe.all.where(public: true).includes(%i[recipe_foods user])
  end
end
