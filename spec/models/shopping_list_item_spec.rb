require 'rails_helper'

RSpec.describe ShoppingListItem, type: :model do
  it 'can instantiate itself' do
    shopping_list_item = ShoppingListItem.create(
      item_name: 'A valid item',
      user: User.first,
    )
    expect(shopping_list_item).to be_valid
  end

  it 'will not be valid without user' do
    shopping_list_item = ShoppingListItem.create(
      item_name: 'A valid item',
    )
    expect(shopping_list_item).to_not be_valid
  end

  it 'will not be valid without item_name' do
    shopping_list_item = ShoppingListItem.create(
      item_name: '',
      user: User.first,
    )
    expect(shopping_list_item).to_not be_valid
  end
end
