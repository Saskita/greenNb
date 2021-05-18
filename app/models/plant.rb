class Plant < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings
  
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  
  has_many_attached :photos

end
