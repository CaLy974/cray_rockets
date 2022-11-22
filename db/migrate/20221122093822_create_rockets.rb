class CreateRockets < ActiveRecord::Migration[7.0]
  def change
    create_table :rockets do |t|
      t.string :name
      t.integer :capacity
      t.string :country
      t.string :town
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
