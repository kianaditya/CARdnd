class CarCardController < ApplicationController
  def index
    @automobile = Automobile.all
  end
end