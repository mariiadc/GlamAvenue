class RemoveLatitudeFromGoods < ActiveRecord::Migration[5.2]
  def change
    remove_column :goods, :latitude
  end
end
