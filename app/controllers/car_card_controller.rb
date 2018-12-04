class CarCardController < ApplicationController
  def index
    @automobile = Automobile.all
  end

  def show
    @automobile = Automobile.find(params[:id])
  end
end