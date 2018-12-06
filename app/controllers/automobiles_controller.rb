class AutomobilesController < ApplicationController
  def index
    @automobiles = Automobile.all
  end

  def new
    @automobile = Automobile.new
  end

  def create
    @automobile = Automobile.new(automobile_params)
    @automobile["user_id"] = current_user["id"]
    @automobile.save
    redirect_to users_path
    flash[:success] = 'Car succesfully added'
  end

  private

  def automobile_params
    params.require(:automobile).permit(:brand, :model, :year, :price)
  end

end