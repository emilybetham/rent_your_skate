class AddMessageColumnToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :message, :text, limit: 250
  end
end
