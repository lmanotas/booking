class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :hotel_name
      t.string :place_id
      t.date :from
      t.date :to
      t.string :city
      t.timestamps null: false
    end
  end
end
