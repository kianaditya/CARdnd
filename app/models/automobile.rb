class Automobile < ApplicationRecord
    validates_presence_of :brand, :model, :year, :price
end
