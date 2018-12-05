class AutomobilesController < ApplicationController
  def index
    @automobiles = Automobile.all
  end

  def new
    @automobile = Automobile.new()
  end

  private

  def automobile_params
    params.require(:automobile).permit(:brand, :model, :year, :price)
  end

end