class CreateGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
      t.string :name
      t.string :description
      t.string :category
      t.integer :price
      t.string :location
      t.string :designer
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
