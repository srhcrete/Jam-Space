class CreateBooking < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.belongs_to :band, index: true
      t.belongs_to :service, index: true
      t.datetime :booking_from
      t.datetime :booking_to
      t.string :status
      t.timestamps
    end
  end
end
