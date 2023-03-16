require 'rails_helper'

RSpec.describe Food, type: :model do
  subject do
    @user = User.create(name: 'Someone')
    @food = Food.create(name: 'Food', measurement_unit: 'grams', unit_price: 15.5, user_id: @user.id)
  end

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'name should not be empty' do
    subject.name = ' '
    expect(subject).to_not be_valid
  end

  it 'name should have valid value' do
    expect(subject.name).to eql 'Food'
  end

  it 'name should be a string' do
    expect(subject.name).to be_a(String)
  end

  it 'measurement unit should be present' do
    subject.measurement_unit = nil
    expect(subject).to_not be_valid
  end

  it 'price should be present' do
    subject.unit_price = nil
    expect(subject).to_not be_valid
  end
end
