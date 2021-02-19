class CreateWishlistItems < ActiveRecord::Migration[6.0]
  def change
    create_table :wishlist_items do |t|
      t.string :title
      t.text :ingredients
      t.text :method
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
