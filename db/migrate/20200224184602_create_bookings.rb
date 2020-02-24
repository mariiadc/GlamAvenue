class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :start_date, null: false
      t.string :end_date, null: false
      t.references :user, foreign_key: true
      t.references :good, foreign_key: true

      t.timestamps
    end
  end
end
