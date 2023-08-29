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

  def show
    @bike = Bike.find_by(id: params[:id])
    render :show
  end

  def update
    @bike = Bike.find_by(id: params[:id])
    @bike.update(
      manufacturer: params[:manufacturer] || @bike.manufacturer,
      model: params[:model] || @bike.model,
      style: params[:style] || @bike.style,
      price: params[:price] || @bike.price,
      image: params[:image] || @bike.image,
    )
    render :show
  end
end