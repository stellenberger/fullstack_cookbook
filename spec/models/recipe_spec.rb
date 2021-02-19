require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it 'can instantiate itself' do
    recipe = Recipe.create(
      title: "A valid title",
      ingredients: "Some valid ingredients",
      method: "A valid method",
      user: User.first,
    )
    expect(recipe).to be_valid
  end

  it 'will not be valid without a title' do
    recipe = Recipe.create(
      title: "",
      ingredients: "Some valid ingredients",
      method: "A valid method",
      user: User.first,
    )
    expect(recipe).to_not be_valid
  end

  it 'will not be valid without ingredients' do
    recipe = Recipe.create(
      title: "A valid title",
      ingredients: "",
      method: "A valid method",
      user: User.first,
    )
    expect(recipe).to_not be_valid
  end

  it 'will not be valid without a method' do
    recipe = Recipe.create(
      title: "A valid title",
      ingredients: "Some valid ingredients",
      method: "",
      user: User.first,
    )
    expect(recipe).to_not be_valid
  end

  it 'will not be valid without a user' do
    recipe = Recipe.create(
      title: "A valid title",
      ingredients: "Some valid ingredients",
      method: "A valid method"
    )
    expect(recipe).to_not be_valid
  end
end
