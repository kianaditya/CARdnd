class AutomobilesController < ApplicationController
  def index
    @automobiles = Automobile.all
  end

  def new
    @automobile = Automobile.new
  end

  def create
    @automobile = Automobile.create(automobile_params)
    redirect_to automobiles_path
    flash[:success] = 'Car succesfully added'
  end

  private

  def automobile_params
    params.require(:automobile).permit(:brand, :model, :year, :price)
  end

end