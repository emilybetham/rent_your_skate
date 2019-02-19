class AddEndDayToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :end_day, :date
  end
end
