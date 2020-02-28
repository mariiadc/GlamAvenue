class AddAddressToGoods < ActiveRecord::Migration[5.2]
  def change
    add_column :goods, :address, :string
  end
end
