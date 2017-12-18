class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :title
      t.string :description
      t.timestamp :booked_date
      t.timestamp :scheduled_date
      t.integer :provider_id
      t.integer :band_id
      t.string :status
      t.boolean :approved
      t.decimal :price, precision: 5, scale: 2
      t.float :latitude
      t.float :longitude
      t.string :address
      t.integer :tag_id
    end
  end
end
