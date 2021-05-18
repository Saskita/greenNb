class Plant < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  has_many :bookings
  has_many_attached :photos
end
