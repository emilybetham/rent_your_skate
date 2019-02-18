class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :category
      t.text :description
      t.string :photo
      t.integer :price
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
