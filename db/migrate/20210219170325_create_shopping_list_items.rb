class CreateShoppingListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :shopping_list_items do |t|
      t.string :item_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
