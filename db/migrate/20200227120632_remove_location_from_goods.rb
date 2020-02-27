class RemoveLocationFromGoods < ActiveRecord::Migration[5.2]
  def change
    remove_column :goods, :location
  end
end
