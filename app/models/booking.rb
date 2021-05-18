class Booking < ApplicationRecord
  belongs_to :plant
  belongs_to :user

  validates :start_date, :end_date, presence: true
  validates :status, inclusion: { in: ["Waiting", "Accepted", "Declined"] }
end
