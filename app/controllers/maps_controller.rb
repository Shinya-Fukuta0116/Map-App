class MapsController < ApplicationController
  def new
    @maps = Map.all
  end
  def create
    @map = Map.new(map_params)
    @map.save
    redirect_to root_path
  end

  def index
    @maps = Map.all
    gon.maps = @map

  end

private

  def map_params
      params.permit(:name, :address,:latitude, :longitude)
  end
end
