require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  let(:user) { create(:user) }
  let(:recipe) { create(:recipe, user_id: user.id) }
  let(:food) { create(:food, user_id: user.id) }
  let(:recipe_food) { create(:recipe_food, food_id: food.id, recipe_id: recipe.id) }

  describe 'Attributes' do
    it { should validate_presence_of(:quantity) }
    it 'quantity must be integer' do
      expect(recipe_food.quantity).to be_kind_of(Integer)
    end
  end
end
