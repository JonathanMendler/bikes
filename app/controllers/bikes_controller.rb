class BikesController < ApplicationController
  def index
    @bikes = Bike.all
    render :index
  end

  def create
    @bike = Bike.create(
      manufacturer: params[:manufacturer],
      model: params[:model],
      style: params[:style],
      price: params[:price],
      image: params[:image],
    )
    render :show
  end
end