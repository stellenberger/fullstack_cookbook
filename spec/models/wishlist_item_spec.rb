require 'rails_helper'

RSpec.describe WishlistItem, type: :model do
  it 'can instantiate itself' do
    wishlist_item = WishlistItem.create(
      title: "A valid title",
      ingredients: "Some valid ingredients",
      method: "A valid method",
      user: User.first,
    )
    expect(wishlist_item).to be_valid
  end

  it 'will not be valid without a title' do
    wishlist_item = WishlistItem.create(
      title: "",
      ingredients: "Some valid ingredients",
      method: "A valid method",
      user: User.first,
    )
    expect(wishlist_item).to_not be_valid
  end

  it 'will not be valid without ingredients' do
    wishlist_item = WishlistItem.create(
      title: "A valid title",
      ingredients: "",
      method: "A valid method",
      user: User.first,
    )
    expect(wishlist_item).to_not be_valid
  end

  it 'will not be valid without a method' do
    wishlist_item = WishlistItem.create(
      title: "A valid title",
      ingredients: "Some valid ingredients",
      method: "",
      user: User.first,
    )
    expect(wishlist_item).to_not be_valid
  end

  it 'will not be valid without a user' do
    wishlist_item = WishlistItem.create(
      title: "A valid title",
      ingredients: "Some valid ingredients",
      method: "A valid method"
    )
    expect(wishlist_item).to_not be_valid
  end
end
