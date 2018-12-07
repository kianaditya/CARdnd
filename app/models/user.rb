class User < ApplicationRecord
  has_many :automobile
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :first_name, :last_name, :address, :driving_age, :age

  has_one_attached :image
end
