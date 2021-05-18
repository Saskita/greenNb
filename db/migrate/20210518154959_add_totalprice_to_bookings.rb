class AddTotalpriceToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :totalprice, :integer
  end
end
