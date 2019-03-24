class Item < ApplicationRecord
  belongs_to :location
  belongs_to :user

  validates :price, numericality: { greater_than: 0 }

  validates :description, presence: true, length: {minimum: 2}
  validates :location, :model, :serial, :price, :date, :photo, presence: true
end
