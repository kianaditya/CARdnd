class Automobile < ApplicationRecord
    belongs_to :user
    validates_presence_of :brand, :model, :year, :price
end
