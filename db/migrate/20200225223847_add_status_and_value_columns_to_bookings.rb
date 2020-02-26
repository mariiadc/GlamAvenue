class AddStatusAndValueColumnsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :value, :integer, null: false
    add_column :bookings, :status, :boolean, default: false
  end
end
