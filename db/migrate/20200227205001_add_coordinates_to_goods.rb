class AddCoordinatesToGoods < ActiveRecord::Migration[5.2]
  def change
    add_column :goods, :latitude, :float
    add_column :goods, :longitude, :float
  end
end
