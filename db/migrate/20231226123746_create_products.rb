class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :bame
      t.string :description
      t.string :price
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
