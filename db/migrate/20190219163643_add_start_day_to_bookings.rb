class AddStartDayToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :start_day, :date
  end
end
