class RemoveLongitudeFromGoods < ActiveRecord::Migration[5.2]
  def change
    remove_column :goods, :longitude
  end
end
