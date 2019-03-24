class User < ApplicationRecord
  has_secure_password
  has_many :items
  has_many :locations


  validates :f_name, :email, :l_name, :address, :city, :state, :zip, :phone,  presence: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i 
  validates :email, presence: true, length: {minimum: 2}, uniqueness: true
end
