require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  subject do
    @user = User.create(name: 'Someone')
    @food = Food.create(name: 'Food', measurement_unit: 'grams', unit_price: 15.5, user_id: @user.id)
    @recipe = Recipe.create(name: 'Recipe', preparation_time: 15, cooking_time: 30, description: 'description',
                            public: true, user_id: @user.id)
    @recipe_food = RecipeFood.create(quantity: '15g', food_id: @food.id, recipe_id: @recipe.id)
  end

  before { subject.save }

  it 'quantity should be present' do
    subject.quantity = nil
    expect(subject).to_not be_valid
  end

  it 'quantity should not be empty' do
    subject.quantity = ' '
    expect(subject).to_not be_valid
  end

  it 'quantity should have valid value' do
    expect(subject.quantity).to eql 15
  end

  it 'quantity should be an integer' do
    expect(subject.quantity).to be_a(Integer)
  end
end
