class AutomobilesController < ApplicationController
  def index
    @automobiles = Automobile.all
  end

  def show
    @automobile = Automobile.find(params[:id])
  end
end