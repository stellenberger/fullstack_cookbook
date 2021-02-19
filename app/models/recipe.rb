class Recipe < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :ingredients, presence: true
  validates :method, presence: true
end
