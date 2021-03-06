class Booking < ApplicationRecord
  belongs_to :plant
  belongs_to :user

  validates :start_date, :end_date, presence: true
  validates :status, inclusion: { in: ["Waiting", "Accepted", "Declined"] }

  before_save :set_total_price

  def set_total_price
    totalprice = plant.price * (end_date - start_date).to_i
  end
end
