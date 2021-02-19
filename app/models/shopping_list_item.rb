class ShoppingListItem < ApplicationRecord
  belongs_to :user
  validates :item_name, presence: true
end
